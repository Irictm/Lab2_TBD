<!-- Map.vue -->
<template>
    <div id="map" class="map-container"></div>
</template>
  
  <script>
  import { onMounted, ref } from 'vue';
  import L from 'leaflet';
  import 'leaflet/dist/leaflet.css';
  import greypng from '../assets/marker-icon-2x-grey.png';
  import redpng from '../assets/marker-icon-2x-red.png';
  
  export default {
    name: 'Map',

    setup() {
      let map = ref(null);
      let circleGroup = ref(null);
      let markerGroup = ref(null);
      onMounted(() => {
        map.value = L.map('map').setView([-33.45121494496883, -70.68451593558727], 7);
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
          attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map.value);
        circleGroup.value = L.layerGroup();
        markerGroup.value = L.layerGroup();
      });
      return {
        map,
        circleGroup,
        markerGroup
      }
    },
    methods: {
      putMarker(name, lat, lon, icon = null) {
        switch (icon) {
          case "grey":
            var grayIcon = new L.Icon({
              iconUrl: greypng,
              shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
              iconSize: [25, 41],
              iconAnchor: [12, 41],
              popupAnchor: [1, -34],
              shadowSize: [41, 41]
            });
            var marker = L.marker([lat, lon], { title: name, icon: grayIcon });
            break;
          case "red":
            var redIcon = new L.Icon({
              iconUrl: redpng,
              shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
              iconSize: [25, 41],
              iconAnchor: [12, 41],
              popupAnchor: [1, -34],
              shadowSize: [41, 41]
            });
            var marker = L.marker([lat, lon], { title: name, icon: redIcon });
            break;
          default:
            var marker = L.marker([lat, lon], { title: name });
        }
        this.markerGroup.addLayer(marker);
        this.map.addLayer(this.markerGroup);
      },
      clearMarkers() {
        this.markerGroup.clearLayers();
      },
      putCircle(lat, lon, rad) {
        if (this.map.hasLayer(this.circleGroup)) {
          this.circleGroup.clearLayers();
        }
        var circle = L.circle([lat, lon], {radius: rad});
        this.circleGroup.addLayer(circle);
        this.map.addLayer(this.circleGroup);
      }
    }
  };
  </script>
  
  <style scoped>
  .map-container {
    width: 100%;
    height: 400px;
  }
  </style>
  