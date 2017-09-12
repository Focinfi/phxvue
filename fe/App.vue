<template>
  <div id="app">
    <slideBar/>
    <div class="dashboard">
      <headerBar resName="Products"/>
      <showView resName="Products"/>
    </div>
  </div>
</template>

<script>
import SlideBar from './containers/SlideBar.vue'
import HeaderBar from './containers/HeaderBar.vue'
import ShowView from './containers/ShowView.vue'

export default {
  name: 'app',
  components: {
    SlideBar, HeaderBar, ShowView
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<style>
html, body, main {
  margin: 0;
  width: 100%;
  height: 100%;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  width: 100%;
  height: 100%;
  display: flex;
}

.dashboard{
  width: calc(100% - 250px);
  height: 100%;
}
</style>
