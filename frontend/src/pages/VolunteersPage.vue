<template>
    <div class="container">
      <div class="volunteers-container">
        <Volunteers ref="volunteersComponent" />
      </div>
      <div class="map-container">
        <Map ref="map" />
      <v-btn @click="markVolunteers">
        Mostrar Ubicacion Voluntarios
      </v-btn>
      </div>
    </div>
  </template>
  
  <script>
  import Volunteers from '../components/Volunteers.vue';
  export default {
    name: 'VolunteersPage',
    components: {
      Volunteers,
      Map
    },
    methods: {
      markVolunteers() {
        let volunteers = this.$refs.volunteersComponent.volunteers;
        volunteers.forEach((vol) => {
          this.$refs.map.putMarker(vol.latitude, vol.longitude)
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
  
  .volunteers-container, .map-container {
    width: 80%;
    margin-bottom: 20px;
  }
  
  @media (min-width: 768px) {
    .container {
      flex-direction: row;
      justify-content: space-between;
    }
    
    .volunteers-container, .map-container {
      width: 48%;
    }
  }
  </style>