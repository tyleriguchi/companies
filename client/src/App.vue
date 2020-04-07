<template>
  <div id="app">
    <overview-page />
  </div>
</template>

<script>
import OverviewPage from "./modules/overview/overview-page.vue";

export default {
  name: "App",
  components: {
    OverviewPage
  }
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
