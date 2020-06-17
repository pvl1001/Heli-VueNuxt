<template>
  <div>
      <div class="burger-menu" :class="{ 'show-burger': showBurger }">
<!--          <div class="burger">-->
<!--              <input type="checkbox" id="menu8" @click="showBurger = !showBurger" />-->
<!--              <label for="menu8">-->
<!--                  <div></div>-->
<!--                  <div></div>-->
<!--                  <div></div>-->
<!--              </label>-->
<!--          </div>-->
          <b-nav class="nav">
              <b-nav-item>FLIGHTS</b-nav-item>
              <b-nav-item>ABOUT</b-nav-item>
              <b-nav-item>LOGIN</b-nav-item>
          </b-nav>
      </div>
      <b-container fluid>
          <b-row>
              <b-col cols="12" class="header-image">
                  <div class="wrapper">
                      <div class="d-flex justify-content-between align-items-center">
                          <img src="../static/icon/logo.png" width="177" height="51">

                          <div class="burger">
                              <input type="checkbox" id="menu" @click="showBurger = !showBurger" />
                              <label for="menu">
                                  <div></div>
                                  <div></div>
                                  <div></div>
                              </label>
                          </div>

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

         },

         data() {
             return {
                 showBurger: false,
             }
         }
     }
 </script>

<style lang="scss">

    .burger-menu {
        display: none;
    }

    .burger {
        display: none;
        width: 20px;
        height: 22px;
        position: absolute;
        top: 44px;
        right: 20px;
        z-index: 9999;

        input {
            display: none;
        }

        label {
            position: relative;
            display: inline-block;
            cursor: pointer;
            transition: all .5s;
            height: 100%;
            width: 100%;
            margin: 0;
        }

        div,
        div:before,
        div:after {
            background: #333;
            position: absolute;
            height: 3px;
            width: 100%;

        }

        label {
            div:first-child {
                top: 0;
            }
            div:nth-child(2) {
                top: calc(50% - 1.5px);
            }
            div:last-child {
                bottom: 0;
            }
        }

        input + label {
            div {
                transition: top .15s .17s, transform .12s .033s;
            }
            div:last-child {
                transition: bottom .15s .17s, transform .17s;
            }
        }

        input:checked + label {
            div {
                top: calc(50% - 1.5px);
                transform: rotate(315deg);
                transition: top .1s, transform .3s .1s;
            }
            div:nth-child(3) {
                bottom: calc(50% - 1.5px);
                transform: rotate(405deg);
                transition: bottom .1s, transform .3s .1s;
            }
        }

    }


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
            transition: .2s;
            color: var(--colorText);
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
        .nav .nav-link:hover {
            color: var(--colorBg);
        }
    }




    @media (max-width: 767px) {

        .header-image {
            .nav {
                position: absolute;
                flex-direction: column;
                top: 120px;
            }
        }

        .burger-active:before,
        .burger-active:after, {

        }

        .burger {
            display: block;
        }
        .burger-menu {
            display: block;
            position: fixed;
            width: 100%;
            height: 100%;
            background-color: var(--colorBg);
            z-index: 999;
            left: -100%;
            transition: .3s ease;
            transition-delay: .1s;

            .nav {
                flex-direction: column;
                padding: 65px 20px;
            }

        }

        .show-burger {
            left: 0;
        }

    }
</style>

