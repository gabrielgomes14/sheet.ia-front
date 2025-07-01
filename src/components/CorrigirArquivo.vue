<template>
<v-container
fluid
class="pa-0 d-flex align-center justify-center background-light"
>
<v-row
    class="ma-0"
    style="width: 100%; max-width: 960px;"
    justify="center"
>
    <v-col cols="12">
    <v-card
        class="pa-10 custom-card"
        elevation="6"
    >
        <!-- Logo -->
        <v-row class="mb-8" justify="center" align="center">
        <v-img
            :src="logo"
            alt="Logo ECAR"
            max-height="220"
            max-width="460"
            contain
            class="mx-auto"
        ></v-img>
        </v-row>

<p class="text-center text-muted mb-14 subtitle subtitle-large">
Deixe a IA cuidar da correção automática dos dados de hodômetro.
</p>

        <!-- Upload -->
        <v-file-input
        v-model="arquivo"
        accept=".xlsx"
        label="Selecionar planilha Excel"
        prepend-icon="mdi-file-excel"
        variant="outlined"
        rounded
        dense
        hide-details
        :disabled="carregando"
        @change="onFileChange"
        class="mb-8"
        ></v-file-input>

        <!-- Botão de download -->
        <v-btn
        :disabled="dadosCorrigidos.length === 0 || carregando"
        color="cyan darken-2"
        large
        elevation="4"
        class="mb-6 btn-width btn-text-white"
        rounded
        @click="baixarExcel"
        >
        <v-icon left>mdi-download</v-icon>
        Baixar
        </v-btn>

        <!-- Alertas -->
        <v-alert
        v-if="status"
        :type="statusTipo"
        border="start"
        elevation="2"
        density="compact"
        class="mb-6"
        >
        {{ status }}
        </v-alert>

        <!-- Tabela -->
        <v-table
        v-if="dadosCorrigidos.length"
        fixed-header
        height="400"
        class="elevation-1 rounded"
        >
        <thead>
            <tr>
            <th
                v-for="header in headers"
                :key="header.value"
                class="text-left text-subtitle-2 table-header"
            >
                {{ header.text }}
            </th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="(item, index) in dadosCorrigidos" :key="index">
            <td
                v-for="header in headers"
                :key="header.value"
                class="text-truncate"
            >
                {{ item[header.value] }}
            </td>
            </tr>
        </tbody>
        </v-table>
    </v-card>

    <!-- Rodapé -->
    <footer class="mt-10 text-center text-caption text-muted">
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
import logo from '/home/gomesgalikosky/machine-learning_ecar/front/front-ecar/src/assets/fleet.png'; // ou '@/assets/fleet.png'

const arquivo = ref(null);
const status = ref("");
const statusTipo = ref("info");
const carregando = ref(false);
const dadosCorrigidos = ref([]);

const headers = computed(() => {
if (dadosCorrigidos.value.length === 0) return [];
return Object.keys(dadosCorrigidos.value[0]).map((key) => ({
text: key.charAt(0).toUpperCase() + key.slice(1).replace(/_/g, " "),
value: key,
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
const response = await fetch("http://localhost:8000/corrigir/", {
    method: "POST",
    body: formData,
});

if (!response.ok) {
    const erro = await response.json();
    status.value = "Erro: " + erro.erro;
    statusTipo.value = "error";
    carregando.value = false;
    return;
}

const json = await response.json();
dadosCorrigidos.value = json.dados || [];

if (dadosCorrigidos.value.length) {
    status.value = "Arquivo corrigido carregado!";
    statusTipo.value = "success";
} else {
    status.value = "Nenhum dado encontrado no arquivo corrigido.";
    statusTipo.value = "warning";
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
const blob = new Blob([wbout], {
type: "application/octet-stream",
});
saveAs(blob, "dados_corrigidos.xlsx");
}
</script>

<style scoped>
.background-light {
min-height: 100vh;
background-color: whitesmoke;
}

.custom-card {
background-color: white;
border-radius: 20px;
border: 1px solid #5a4c03;
}

.text-truncate {
max-width: 800px;
white-space: nowrap;
overflow: hidden;
text-overflow: ellipsis;
}

.subtitle {
font-size: 16px;
}

.table-header {
color: #444;
}

.text-muted {
color: #666;
}

.btn-width {
max-width: 260px;
width: 100%;
margin: 0 auto;
display: block;
}

.btn-text-white {
color: white !important;
}

.subtitle-large {
  font-size: 15px; /* ou o tamanho que quiser */
}
</style>
