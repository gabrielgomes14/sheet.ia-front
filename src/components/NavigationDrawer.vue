<template>
  <v-navigation-drawer
    v-model="drawer"
    app
    color="white"
    elevation="2"
    width="240"
  >
    <v-list dense>
      <v-list-item v-for="(item, index) in items" :key="index" @click="item.action">
        <v-list-item-icon>
          <v-icon>{{ item.icon }}</v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title>{{ item.title }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </v-list>
  </v-navigation-drawer>
</template>

<script setup>
import { ref } from 'vue';

const drawer = ref(true);

// Lista de opções do menu
const items = [
  { title: 'Importar Planilha', icon: 'mdi-file-excel', action: () => {} },
];
</script>
