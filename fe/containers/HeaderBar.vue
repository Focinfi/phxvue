<template>
  <div class="header-bar">
    <div class="header-title">{{resName}}</div>
  </div>
</template>

<script>
export default {
  name: "headerBar",
  props: {
    resName: String
  }
}
  
</script>

<style scoped>
.header-bar {
  width: 100%;
  height: 60px;
  background-color: #20a0ff;
  line-height: 60px;
  /* padding: 0 20px; */
  color: white;
  font-size: 25px;
  font-weight: bold;
  text-align: left;
}
.header-title {
  padding-left: 20px;
}
</style>
