<template>
    <div>
        <v-data-table v-if="volunteers" :items="volunteers"></v-data-table>
    </div>
</template>


<script>
import axios from 'axios';
import {ref} from 'vue';

const url = "http://localhost:8080";

export default {
  data() {
    return {
      volunteers: ref(null),
      emergencies: ref(null)
    };
  },
  methods: {
    async getVolunteers(emeId, radius) {
      try{
        const response = await axios.get(url + "/emergencies/volunteersInRadius/" + emeId + "/" + radius);
        this.volunteers = await Promise.all(response.data.map(async item => {
          let estado;
          if (item.availability) {
            estado = "Disponible";
          } else {
            estado = "No Disponible";
          }
          return {
            index: item.id,
            disponibilidad: estado,
            nombre: item.name,
            "años": item.age,
            latitude: item.latitude,
            longitude: item.longitude
          };
        }));
      } catch (error) {
        console.error('Error al hacer la solicitud getVolunteers: ', error);
      };
    },
    async getEmergencies(id) {
      try{
        const response = await axios.get(url + "/emergencies/" + id);
        this.emergencies = await response.data;
      } catch (error) {
        console.error('Error al hacer la solicitud getEmergencies: ', error);
      };
    }
  }
};
</script>