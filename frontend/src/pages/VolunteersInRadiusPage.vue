<template>
    <div class="container">
      <div class="volunteersInRadius-container">
        <VolunteersInRadius ref="volunteersInRadiusComponent" />
      </div>
      <div class="map-container">
        <Map ref="map" />
        <input type="number" placeholder=" Index de Emergencia" style="margin-left: 10px;" v-model="emeId">
        <input type="number" placeholder=" Radio en metros" style="margin-left: 10px;" v-model="radius">
        <div>
          <v-btn @click="markData" style="margin-top: 10px;">
            Mostrar Voluntarios en Radio
          </v-btn>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  import VolunteersInRadius from '../components/VolunteersInRadius.vue';
  export default {
    name: 'VolunteersInRadiusPage',
    data() {
      return {
        radius: null,
        emeId: null
      };
    },
    components: {
      VolunteersInRadius,
      Map
    },
    methods: {
      async markData() {
        let map = this.$refs.map;
        let volInRadComp = this.$refs.volunteersInRadiusComponent

        map.clearMarkers();

        if (this.emeId && this.emeId > 0) {
          await volInRadComp.getEmergencies(this.emeId);
          let eme = volInRadComp.emergencies;
          if (eme){
            map.putMarker("Emergencia", eme.latitude, eme.longitude, "red");
            this.markCircleData(this.emeId, eme.latitude, eme.longitude, this.radius);
          }
        }
      },
      async markCircleData(emeId, lat, lon, rad) {
        let map = this.$refs.map;
        let volInRadComp = this.$refs.volunteersInRadiusComponent

        if (rad && rad > 0) {
          map.putCircle(lat, lon, rad);

          await volInRadComp.getVolunteers(emeId, rad);
          let volunteers = volInRadComp.volunteers;
          if (volunteers) {
            volunteers.forEach((vol) => {
              if (vol.disponibilidad == "Disponible") {
                map.putMarker(vol.index, vol.latitude, vol.longitude);
              }
              else {
                map.putMarker(vol.index, vol.latitude, vol.longitude, "grey");
              }
            });
          }
        }
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
  
  .volunteersInRadius-container{
    width: 80%;
    min-width: 50%;
    margin-bottom: 20px;
    margin-right: 5%;
  }
  .map-container {
    width: 80%;
    min-width: 50%;
    margin-top: 20px;
    margin-bottom: 20px;
  }
  
  @media (min-width: 768px) {
    .container {
      flex-direction: row;
      justify-content: space-between;
    }
    
    .volunteersInRadius-container, .map-container {
      width: 48%;
    }
  }
  </style>