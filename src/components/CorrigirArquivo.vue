<template>
  <v-container
    fluid
    class="pa-4 d-flex align-center justify-center background-light"
  >
    <v-row style="width: 100%; max-width: 960px">
      <v-col cols="12">
        <v-card class="pa-8" elevation="1" style="border: 1px solid #ccc;">
          <!-- Logo -->
          <v-row justify="center" class="mb-6">
            <v-img
              :src="logo"
              alt="Logo ECAR"
              max-height="160"
              max-width="400"
              contain
            />
          </v-row>

          <!-- Subtítulo -->
          <p class="text-center subtitle mb-8">
            Deixe a IA cuidar da
            <strong>correção automática</strong> dos dados de hodômetro.
          </p>

          <!-- Input -->
          <v-file-input
            v-model="arquivo"
            accept=".xlsx"
            label="Selecionar planilha Excel"
            prepend-icon="mdi-file-excel"
            variant="outlined"
            rounded
            density="comfortable"
            hide-details
            class="mb-6"
            :disabled="carregando"
            @change="onFileChange"
          />

          <!-- Botão de download -->
          <div class="text-center mb-6">
            <v-btn
              color="indigo"
              variant="flat"
              size="large"
              rounded
              elevation="2"
              :disabled="carregando || dadosCorrigidos.length === 0"
              @click="baixarExcel"
            >
              <v-icon left>mdi-download</v-icon>
              Baixar Correção
            </v-btn>
          </div>

          <!-- Alerta -->
          <v-alert
            v-if="status"
            :type="statusTipo"
            border="start"
            elevation="1"
            class="mb-6"
          >
            {{ status }}
          </v-alert>

          <!-- Tabela estilo Excel com scroll interno -->
          <div class="excel-table-wrapper" v-if="dadosCorrigidos.length">
            <table class="excel-table">
              <thead>
                <tr>
                  <th v-for="header in headers" :key="header.key">
                    {{ header.title }}
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr
                  v-for="(item, index) in dadosCorrigidos"
                  :key="index"
                >
                  <td
                    v-for="header in headers"
                    :key="header.key"
                  >
                    {{ item[header.key] }}
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </v-card>

        <!-- Rodapé -->
        <footer class="text-center text-caption mt-8 text-muted">
          &copy; 2025 ECAR · Inteligência Artificial aplicada à mobilidade
        </footer>
      </v-col>
    </v-row>
  </v-container>
</template>

<script setup>
import { ref, computed } from "vue";
import * as XLSX from "xlsx";
import { saveAs } from "file-saver";
import logo from '../assets/fleet.png';

const arquivo = ref(null);
const status = ref("");
const statusTipo = ref("info");
const carregando = ref(false);
const dadosCorrigidos = ref([]);

const headers = computed(() => {
  if (!dadosCorrigidos.value.length) return [];
  return Object.keys(dadosCorrigidos.value[0]).map(key => ({
    title: key.charAt(0).toUpperCase() + key.slice(1).replace(/_/g, " "),
    key: key
  }));
});

function onFileChange() {
  if (!arquivo.value) return;
  status.value = "";
  dadosCorrigidos.value = [];
  enviarArquivo();
}

async function enviarArquivo() {
  if (!arquivo.value) {
    status.value = "Erro: selecione um arquivo .xlsx";
    statusTipo.value = "error";
    return;
  }

  carregando.value = true;
  status.value = "Processando...";
  statusTipo.value = "info";

  const formData = new FormData();
  formData.append("file", arquivo.value);

  try {
    const response = await fetch("/api/corrigir/", {
      method: "POST",
      body: formData,
    });

    const contentType = response.headers.get("content-type");

    if (!response.ok) {
      let erroMensagem = "Erro desconhecido";

      if (contentType && contentType.includes("application/json")) {
        const erro = await response.json();
        erroMensagem = erro.erro || erro.detail || JSON.stringify(erro);
      } else {
        erroMensagem = await response.text();
      }

      status.value = "Erro: " + erroMensagem;
      statusTipo.value = "error";
      carregando.value = false;
      return;
    }

    if (contentType && contentType.includes("application/json")) {
      const json = await response.json();
      dadosCorrigidos.value = json.dados || [];

      if (dadosCorrigidos.value.length) {
        status.value = "Arquivo corrigido carregado!";
        statusTipo.value = "success";
      } else {
        status.value = "Nenhum dado encontrado no arquivo corrigido.";
        statusTipo.value = "warning";
      }
    } else {
      status.value = "Erro: resposta inesperada da API.";
      statusTipo.value = "error";
    }

  } catch (error) {
    status.value = "Erro na requisição: " + error.message;
    statusTipo.value = "error";
  } finally {
    carregando.value = false;
  }
}

function baixarExcel() {
  if (!dadosCorrigidos.value.length) {
    alert("Nenhum dado para exportar.");
    return;
  }

  const ws = XLSX.utils.json_to_sheet(dadosCorrigidos.value);
  const wb = XLSX.utils.book_new();
  XLSX.utils.book_append_sheet(wb, ws, "Correção");

  const wbout = XLSX.write(wb, { bookType: "xlsx", type: "array" });
  const blob = new Blob([wbout], { type: "application/octet-stream" });
  saveAs(blob, "dados_corrigidos.xlsx");
}
</script>

<style scoped>
.background-light {
  min-height: 100vh;
  background-color: whitesmoke;
}

.subtitle {
  font-size: 18px;
  color: #3f3f3f;
}

.text-muted {
  color: #999;
}

.excel-table-wrapper {
  max-height: 400px;
  overflow-y: auto;
  border: 1px solid #ccc;
  margin-top: 16px;
}

.excel-table {
  width: 100%;
  border-collapse: collapse;
  font-family: Arial, sans-serif;
  font-size: 13px;
}

.excel-table th,
.excel-table td {
  border: 1px solid #ccc;
  padding: 8px;
  text-align: left;
  white-space: nowrap;
  background-color: white;
}

.excel-table th {
  background-color: #d9d9d9;
  font-weight: bold;
}
</style>
