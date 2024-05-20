<template>
  <div class="container">
    <div class="emergencies-container">
      <Emergencies />
    </div>
    <div class="map-container">
      <Map />
    </div>
  </div>
</template>

<script>

export default {
  name: 'EmergenciesPage',
 
};
</script>

<style scoped>
.container {
  display: flex;
  flex-direction: column; /* Para poner los componentes uno debajo del otro */
  align-items: center;
}

.emergencies-container, .map-container {
  width: 80%; /* Ajusta el ancho de los componentes */
  margin-bottom: 20px; /* Espacio entre los componentes */
}

@media (min-width: 768px) {
  .container {
    flex-direction: row; /* Para pantallas más grandes, poner los componentes uno al lado del otro */
    justify-content: space-between;
  }
  
  .emergencies-container, .map-container {
    width: 48%; /* Ajusta el ancho para que ocupen mitad de pantalla */
  }
}
</style>
