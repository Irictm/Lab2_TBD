<template>
    <div>
        <v-data-table v-if="volunteers" :items="volunteers"></v-data-table>
    </div>
</template>


<script>
import axios from 'axios';
import {ref} from 'vue';
import { store } from '../store';

const url = "http://localhost:8080";

export default {
  data() {
    return {
      volunteers: ref(null),
    };
  },

  created() {
    this.getVolunteers();
  },
  
  methods: {
    async getVolunteers() {
      try{
        const response = await axios.get(url + "/volunteer/volunteer");
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
    }
  }
};
</script>