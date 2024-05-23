<!-- Map.vue -->
<template>
    <div id="map" class="map-container"></div>
</template>
  
  <script>
  import { onMounted, ref } from 'vue';
  import L from 'leaflet';
  import 'leaflet/dist/leaflet.css';
  
  export default {
    name: 'Map',

    setup() {
      let map = ref(null);
      onMounted(() => {
        map.value = L.map('map').setView([-33.45121494496883, -70.68451593558727], 13);
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
          attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map.value);
      });
      return {
        map
      }
    },
    methods: {
      putMarker(lat, lon) {
        L.marker([lat, lon]).addTo(this.map);
      },
      putCircle(lat, lon, rad) {
        L.circle([lat, lon], {radius: rad}).addTo(this.map);
      }
    }
  };
  </script>
  
  <style scoped>
  .map-container {
    width: 100%;
    height: 400px; /* Puedes ajustar la altura según necesites */
  }
  </style>
  