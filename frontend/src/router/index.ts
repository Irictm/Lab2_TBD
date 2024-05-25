import { createRouter, createWebHistory, RouteRecordRaw } from 'vue-router';
import EmergenciesPage from '../pages/EmergenciesPage.vue';
import VolunteersPage from '../pages/VolunteersPage.vue';
import VolunteersInRadiusPage from '../pages/VolunteersInRadiusPage.vue';
import Login from '../pages/Login.vue';
import Register from '../pages/Register.vue';
import { store } from '../store';

const routes: RouteRecordRaw[] = [
  { path: '/', component: Login },
  { path: '/login', component: Login },
  { path: '/register', component: Register },
  { 
    path: '/emergencies', 
    component: EmergenciesPage,
    meta: { requiresAuth: true }
  },
  { 
    path: '/volunteers', 
    component: VolunteersPage,
    meta: { requiresAuth: true }
  },
  { 
    path: '/volunteersInRadius', 
    component: VolunteersInRadiusPage,
    meta: { requiresAuth: true }
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

router.beforeEach((to, from, next) => {
  if (to.matched.some(record => record.meta.requiresAuth)) {
    if (!store.token) {
      alert('Por favor, inicie sesión.');
      next('/Login');
    } else {
      next();
    }
  } else {
    next();
  }
});

export default router;
