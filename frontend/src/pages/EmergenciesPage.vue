<template>
  <div class="container">
    <div class="emergencies-container">
      <Emergencies ref="emergenciesComponent" />
    </div>
    <div class="map-container">
      <Map ref="map" />
      <v-btn @click="markEmergencies">
        Mostrar Ubicacion Emergencias
      </v-btn>
    </div>
  </div>
</template>

<script>
import Emergencies from '../components/Emergencies.vue'
export default {
  name: 'EmergenciesPage',
  components: {
      Emergencies,
      Map
    },
    methods: {
      markEmergencies() {
        this.$refs.map.clearMarkers();
        let emergencies = this.$refs.emergenciesComponent.emergencies;
        emergencies.forEach((eme) => {
          this.$refs.map.putMarker(eme.index, eme.latitude, eme.longitude)
        });
      }
    }
 
};
</script>

<style scoped>
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.emergencies-container{
  width: 80%;
  min-width: 60%;
  margin-bottom: 20px;
  margin-right: 5%;
}
.map-container {
  width: 80%;
  min-width: 50%;
  margin-bottom: 20px;
}

@media (min-width: 768px) {
  .container {
    flex-direction: row;
    justify-content: space-between;
  }
  
  .emergencies-container{
    width: 48%;
  }
  .map-container {
    width: 48%;
  }
}
</style>
