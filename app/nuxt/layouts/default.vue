<template>
  <div>
      <b-container fluid>
          <b-row>
              <b-col cols="12" class="header-image">
                  <div class="wrapper">
                      <div class="d-flex justify-content-between align-items-center">
                          <img src="../static/icon/logo.png" width="177" height="51" alt="image">
                          <b-nav class="nav">
                              <b-nav-item>FLIGHTS</b-nav-item>
                              <b-nav-item>ABOUT</b-nav-item>
                              <b-nav-item>LOGIN</b-nav-item>
                          </b-nav>
                      </div>
                      <div class="choose">Choose your way.</div>
                  </div>
              </b-col>
          </b-row>
      </b-container>
      <nuxt/>

  </div>
</template>

 <script>
     import Vue from 'vue';
     import { BootstrapVue, IconsPlugin } from 'bootstrap-vue';

     Vue.use(BootstrapVue)
     Vue.use(IconsPlugin)

     export default {
         components: {

         }
     }
 </script>

<style lang="scss">

    .header-image {
        min-width: 100%;
        height: 410px;
        background: url('../static/img/Rectangle 1.jpg') center no-repeat;
        background-size: cover;
        padding-top: 31px;

        ul > li > a {
            text-transform: uppercase;
            font-weight: 300;
            font-size: 14px;
            letter-spacing: 0.5em;
            padding-right: 76px;
        }
        ul li:last-child a {
            padding-right: 0;
        }
        .choose {
            color: #fff;
            font-size: 36px;
            position: absolute;
            bottom: 0;
            padding-bottom: 5px;
            font-weight: bold;
        }
    }
</style>

