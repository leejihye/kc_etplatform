<template>
  <footer>
      <div class="info">
        <div id="info-help">
            <v-icon small v-on:click="menuClick">error</v-icon>
            <span>도움말</span>
        </div>
        <div id="info-contact">
            <v-icon small v-on:click="menuClick">local_offer</v-icon>
            <span>KOSCOM 연락처</span>
        </div>
        <div id="info-register">
            <v-icon small v-on:click="menuClick">assignment_ind</v-icon>
            <span>사용자등록</span>
        </div>
        <div id="info-copyright">
            <span>&copy; Copyright KOSCOM 2019. All rights reserved.</span>
        </div>
    </div>
          
    </footer>
</template>

<script>
export default {
    data() {
        return {
            tile: false,
            avatarSize: "36px",
        };
    },
    methods: {
        menuClick: function() {
            // console.log('menuClick!!!');
            this.$EventBus.$emit("menuClick");
        },
    }
}
</script>

<style scoped>
footer {
    /* footer를 aside위에 올리기 위해 사용(부유객체) */
    position: fixed;
    bottom: 0;
    height: 40px;
    width: 100%;
    color: #8a8c8f;
    border-top: 1px solid #dee5e7;
    background-color: #f2f2f2;
}

.info {
    margin-top: 10px;
    vertical-align:middle;
}
.info * {
    color:#555;
    font-size: 12px;
}
.info > * {
    display: inline-block;
    margin-left: 20px;
}

.info #info-copyright {
    float: right;
    margin-right: 30px;
}
</style>