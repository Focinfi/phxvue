<template>
  <div class="slide-bar">
    <div class="home">
      <h2>PhxAdmin</h2>
    </div>
    <div class="menu">
      <p>Hello</p>
    </div>
  </div>
</template>

<script>
export default {
  name: "slideBar",
  props: {
    menuItems: Array,
  }
}

</script>

<style scoped>
.slide-bar {
  height: 100%;
  width: 250px;
  background-color: lightgreen;
}
.home {
  height: 150px;
  background-color: gold;
}
.menu {
  position: relative;
  background-color: lightskyblue;
}

</style>
