<template>
  <v-container class="fill-height" fluid>
    <v-row align="center" justify="center" class="register-container">
      <v-col cols="12" sm="8" md="4">
        <v-card>
          <v-card-title class="headline">Registrarse</v-card-title>
          <v-card-text>
            <v-form @submit.prevent="register">
              <v-text-field label="Username" v-model="userData.username" type="text" required></v-text-field>
              <v-text-field label="Password" v-model="userData.password" type="password" required></v-text-field>
              <v-text-field label="Confirm Password" v-model="confirmPassword" type="password" required></v-text-field>
              <v-btn type="submit" color="primary">Register</v-btn>
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
import router from '@/router';

const url = "http://localhost:8080";

export default defineComponent({
  setup() {
    const userData = ref({
      username: '',
      password: '',
    });
    const confirmPassword = ref('');

    const register = async () => {
      if (userData.value.password !== confirmPassword.value) {
        console.error('Passwords do not match');
        return;
      }

      try {
        const response = await axios.post(url + '/register', { username: userData.value.username, password: userData.value.password });
        console.log('Registered successfully:', response.data);

        // Guardar el token en localStorage
        localStorage.setItem("token", response.data);

        // Redirecciona a la página de login después de un registro exitoso
        alert('Registro exitoso. Inicie sesión para continuar');
        router.push('/login');
      } catch (error) {
        console.error('Error registering:', error);
      }
    };

    return {
      userData,
      confirmPassword,
      register,
    };
  },
});
</script>

<style scoped>
.fill-height {
  height: 100%;
}

.register-container {
  margin-top: -500px; 
}
</style>
