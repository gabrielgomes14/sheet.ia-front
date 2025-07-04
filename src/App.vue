<script setup>
import NavigationDrawer from './components/NavigationDrawer.vue'
import CorrigirArquivo from './components/CorrigirArquivo.vue'
import "tabulator-tables/dist/css/tabulator.min.css";
</script>

<template>
  <v-app>
    <!-- Navigation Drawer lateral -->
    <NavigationDrawer />

    <!-- Conteúdo principal -->
    <CorrigirArquivo />
  </v-app>
</template>
