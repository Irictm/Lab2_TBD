<template>
  <v-app>
    <NavigationBar />
    <v-main>
      <router-view />
    </v-main>
    <AppFooter />
  </v-app>
</template>

<script>
import NavigationBar from './components/NavigationBar.vue';
import AppFooter from './components/AppFooter.vue';

export default {
  components: {
    NavigationBar,
    AppFooter,
  },
};
</script>

<style>
html, body, #app {
  height: 100%;
  margin: 0;
}
</style>
