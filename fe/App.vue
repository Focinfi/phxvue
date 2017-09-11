<template>
  <div id="app">
    <slideBar/>
    <div class="dashboard">
      <headerBar/>
    </div>
  </div>
</template>

<script>
import SlideBar from './containers/SlideBar.vue'
import HeaderBar from './containers/HeaderBar.vue'

export default {
  name: 'app',
  components: {
    SlideBar, HeaderBar
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
  text-align: center;
  color: #2c3e50;
  width: 100%;
  height: 100%;
  display: flex;
}

.dashboard{
  width: calc(100% - 250px);
  height: 100%;
}

h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}
</style>
