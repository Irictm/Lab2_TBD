import { createRouter, createWebHistory, RouteRecordRaw } from 'vue-router';
import EmergenciesPage from '../pages/EmergenciesPage.vue';
import VolunteersPage from '../pages/VolunteersPage.vue';
import VolunteersInRadiusPage from '../pages/VolunteersInRadiusPage.vue';
import Login from '../pages/Login.vue';
import Register from '../pages/Register.vue';



const routes: RouteRecordRaw[] = [
  { path: '/', component: Login },
  { path: '/login', component: Login },
  { path: '/register', component: Register },
  { path: '/emergencies', component: EmergenciesPage },
  { path: '/volunteers', component: VolunteersPage },
  { path: '/volunteersInRadius', component: VolunteersInRadiusPage },
  
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});


export default router;
