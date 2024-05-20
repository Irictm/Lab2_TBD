<!-- Map.vue -->
<template>
    <div id="map" class="map-container"></div>
  </template>
  
  <script>
  import { onMounted } from 'vue';
  import L from 'leaflet';
  import 'leaflet/dist/leaflet.css';
  
  export default {
    name: 'Map',
    setup() {
      onMounted(() => {
        const map = L.map('map').setView([51.505, -0.09], 13);
  
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
          attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);
      });
    }
  };
  </script>
  
  <style scoped>
  .map-container {
    width: 100%;
    height: 400px; /* Puedes ajustar la altura según necesites */
  }
  </style>
  