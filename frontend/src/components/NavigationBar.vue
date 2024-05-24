<template>
  <v-app-bar app>
    <v-toolbar-title>Emergencias Chile</v-toolbar-title>
    <v-spacer></v-spacer>
    <v-btn text to="/">Iniciar Sesión</v-btn>
    <v-btn text to="/register">Registrarse</v-btn>
    <v-btn text to="/emergencies">Emergencias</v-btn>
    <v-btn text to="/volunteers">Voluntarios</v-btn>
    <v-btn text to="/volunteersInRadius">Buscar Voluntarios en Radio</v-btn>
    <v-btn icon @click="toggleDrawer">
      <v-icon>{{ drawerVisible ? 'mdi-menu-open' : 'mdi-menu' }}</v-icon>
    </v-btn>
  </v-app-bar>
  <v-navigation-drawer v-model="drawerVisible" app>
    <v-list>
      <v-list-item title="Navegación" />
      <v-divider />
      <v-list-item v-for="(item, index) in icons" :key="index" :to="item.to">
        <v-icon>{{ item.icon }}</v-icon>
        <v-list-item-content>{{ item.title }}</v-list-item-content>
      </v-list-item>
    </v-list>
  </v-navigation-drawer>
</template>

<script>
export default {
  name: 'NavigationBar',
  data() {
    return {
      drawerVisible: false,
      icons: [
        { title: 'Iniciar Sesión', icon: 'mdi-login', to: '/' },
        { title: 'Registrarse', icon: 'mdi-account-plus', to: '/register' },
        { title: 'Emergencias', icon: 'mdi-alert', to: '/emergencies' },
        { title: 'Voluntarios', icon: 'mdi-account', to: '/volunteers' },
        { title: 'Buscar Voluntarios en Radio', icon: 'mdi-map-search', to: '/volunteersInRadius' },
      ],
    };
  },
  methods: {
    toggleDrawer() {
      this.drawerVisible = !this.drawerVisible;
    },
  },
};
</script>

<style scoped>
.v-app-bar {
  background-color: #1976D2;
  color: white;
}
</style>
