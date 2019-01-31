<template>
<aside>
  <h3>INDEX</h3>
  <h3>ETP</h3>
  <h3>TODAY</h3>
  <h3>SUPPORT</h3>
  <h3>ADMIN</h3>
</aside>
</template>

<script>
export default {
    data() {
        return {

        };
    },
    methods: {
        dashboard1: function() {
            console.log('dashboard1');
        },
        dashboard2: function() {
            console.log('dashboard2');
        },
    }
}
</script>

<style scoped>
aside {
  /* for fixed side bar */
  position: fixed;
  top: 62px;
  bottom: 0;
  width: 200px;  /* 너비 고정 */
  background-color: #fff;
  box-shadow: 0 2px 2px rgba(0, 0, 0, 0.05), 0 1px 0 rgba(0, 0, 0, 0.05);

}
/* aside navigation */
aside > ul {
  width: 200px;
}
aside > ul > li > a {
  display: block;
  padding: 10px 0 0px 10px;
  color: #777;
}
aside > ul > li > a.active {
  color: rgb(79, 79, 233);
}
aside > ul > li > a:hover:not(.active) {

}

aside > h3 {
  padding: 10px 0 0px 20px;
  color: #888;
}

aside > hr {
  margin-top: 10px;
  margin-left: 20px;
  width: 160px;
  height: 1px;
  border: none;
  background-color:#eee;
}

</style>