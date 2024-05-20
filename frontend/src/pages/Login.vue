<template>
  <v-container class="fill-height" fluid>
    <v-row align="center" justify="center" class="login-container">
      <v-col cols="12" sm="8" md="4">
        <v-card>
          <v-card-title class="headline">Iniciar Sesión</v-card-title>
          <v-card-text>
            <v-form @submit.prevent="login">
              <v-text-field label="Usuario" v-model="username" required></v-text-field>
              <v-text-field label="Password" v-model="password" type="password" required></v-text-field>
              <v-btn type="submit" color="primary">Login</v-btn>
            </v-form>
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { defineComponent, ref } from 'vue';
import axios from 'axios';
import router from '@/router/index';
import { store } from "../store";

const url = "http://localhost:8080";

export default defineComponent({
  setup() {
    const username = ref('');
    const password = ref('');

    const login = async () => {
      try {
        const data = {
          username: username.value,
          password: password.value,
        };

        const response = await axios.post(url + '/login', data);

        if (response.data === "BAD") {
          alert("Debe registrarse primero");
          router.push("/register");
        } else {
          store.token = response.data;
          console.log(response.data);
          router.push("/emergencies");
        }

      } catch (error) {
        console.error('Error logging in:', error);
      }
    };

    return {
      username,
      password,
      login,
    };
  },
});
</script>

<style scoped>
.fill-height {
  height: 100%;
}

.login-container {
  margin-top: -500px; 
}
</style>
