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
        let emergencies = this.$refs.emergenciesComponent.emergencies;
        emergencies.forEach((eme) => {
          this.$refs.map.putMarker(eme.latitude, eme.longitude)
        });
      }
    }
 
};
</script>

<style scoped>
.container {
  display: flex;
  flex-direction: column; /* Para poner los componentes uno debajo del otro */
  align-items: center;
}

.emergencies-container, .map-container {
  width: 80%; /* Ajusta el ancho de los componentes */
  margin-bottom: 20px; /* Espacio entre los componentes */
}

@media (min-width: 768px) {
  .container {
    flex-direction: row; /* Para pantallas más grandes, poner los componentes uno al lado del otro */
    justify-content: space-between;
  }
  
  .emergencies-container, .map-container {
    width: 48%; /* Ajusta el ancho para que ocupen mitad de pantalla */
  }
}
</style>
