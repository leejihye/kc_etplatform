<template>
    <div class="container_net">
        <LoginForm></LoginForm>
        <LoginNoticeModal v-if="showModal"></LoginNoticeModal>
    </div>
</template> 

<script>
import LoginForm        from './LoginForm.vue';
import LoginNoticeModal from './LoginNoticeModal.vue';

export default {
    data() {
        return {
            showModal : false,
        };
    },
    components: {
        LoginForm: LoginForm,
        LoginNoticeModal:LoginNoticeModal,
    },
    beforeCreate() {
        this.$forceupdate;
    },
    created: function() {
        this.$EventBus.$on('popClose', this.popClose);   //리뉴얼 공지팝업 MODAL 닫기
    },
    beforeDestroy() {
        this.$EventBus.$off('popClose');
    },    
    methods: {
        popClose: function() {
            // console.log('popClose');
            this.showModal = false;
        },
    }
}
</script>

<style scoped>
a:hover { 
    text-decoration: none;
}      
.control { 
    position: inherit; 
    top: 50%; 
    z-index: 5; 
    display: inline-block; 
    right: 50%;
} 
header { 
    color: #fff; 
    text-align: center; 
    padding: 80px 0;
    word-break: keep-all;
}
header h1 {letter-spacing: -0.025em;line-height: 1.5em;}
header small {color: #fff;padding-bottom:4px;border-bottom:1px solid #fff;}
header strong {color: #fff;padding-bottom:2px;border-bottom:1px solid #fff;}
header p {color: #C0C0C0; margin-top:50px;
}
.sans {  
    font-family: 'Source Sans Pro', sans-serif; 
}
/*  icons */
.service {
    margin: 40px 0;
}
.service a { 
    display: block;
}
.cog .row {padding-bottom:70px;}
.icontxt { 
    display: block; 
    text-align: left;
    padding:0 30px 0 0;
    word-break:keep-all;
    margin-top:60px;
} 
.icontxt h4 {
    color:#2877c7;
    font-weight: bold; 
    font-family: 'Source Sans Pro'; 
    font-size: 24px; 
    text-transform: uppercase;
}
.icontxt p {color:#777;margin-top:20px;}
.icontxt a h4+p {min-height:70px;}
.icontxt a i {display:block;text-align: right;color:#538cc6;padding-right:20px;}
.icons {      
    float: left;
    display: block;
    font-size: 30px;
    color: #fff;
    background-color: #FF8000;
    border-radius: 50%;
    text-align: center;
    margin-right: 15px ;
    padding: 20px;
    border:4px solid #FF8040;
    transition: all 0.3s;
}  
.service a:hover .icons  { 
    background-color:#0080C0;
}
.service a:hover .icontxt h4 { 
    color: #0080FF; 
}
@media (min-width: 768px) {
    .icons { 
        margin: 0 auto; 
        position: relative; 
        left: 30%;
    }
    .row div .icontxt {border-right:1px solid #e5e5e5;}
    .row div:last-child .icontxt {border-right:none;}
    .icontxt a i {position: relative;bottom:0;}

}
@media (max-width: 767px) {
    .row div .icontxt {text-align:center;}
    .icontxt a h4+p {min-height:40px;}
    .icontxt a i {display:block;text-align: center;color:#538cc6;padding-right:0;}
}
@media (max-width: 360px) {
    .icontxt p { 
        display: none; 
    }
    .icontxt {
        line-height:10px; 
        padding: 0; 
        margin: 0;
    }
    .icontxt h4 { 
        display: none; 
    }
    .icons { 
        padding: 20px; 
        margin: 10px 0 10px 20px; 
    }
    .book img { 
        width: 50%; 
        height: auto;
    }
    .control { 
        display: none;
    } 
}
.about p { 
    line-height: 1.8em; 
    font-size: 18px; 
    color: #282923;
    margin: 0 0 10px;
}
.about .image {
    margin-left: auto; 
    margin-right: auto; 
    display: block;
}
.about  { 
    padding: 50px 0;
}
#about_1 { 
    margin-top: -85px; 
    padding-top: 85px 
}  /*  nav-fix 때문에 생기는 공백 상쇄 */

.footer {
    padding : 20px ;
    background-color : #151616;
    color : #ffffff;
    text-align : center ;
}
.content1 {
    background:url(/assets/img/slide-bg.jpg)  no-repeat center top fixed;
    background-size:cover; 
}
/*Waypoints
========================================================================== */
.wp1 { visibility: hidden; }
.bounceInLeft, .bounceInRight, .fadeInUp, .fadeInUpDelay, .fadeInDown, .fadeInUpD, .fadeInLeft, .fadeInRight { visibility: visible; }
.delay-05s { animation-delay: 0.5s; -webkit-animation-delay: 0.5s; }
.delay-1s { animation-delay: 1s; -webkit-animation-delay: 1s; }
/*
==========================================*/

.rounded-circle{
    margin-left: 50px;
    margin-bottom: 1rem;
}
.imgs{
    margin-left: 100px;
    width: 100%;
}
</style>