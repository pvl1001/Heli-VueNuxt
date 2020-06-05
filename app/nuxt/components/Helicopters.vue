<template>
    <div class="helicopters">
        <b-col class="wrapper">
            <h1>Helicopters</h1>
            <span>We have access to a huge fleet of helicopters for any purpose.</span>
                <div class="swiper">
                <template>
                    <swiper :options="swiperOption" ref="mySwiper">
                        <!-- slides -->
                        <swiper-slide v-for="index in 10" :key="index">

                            <div class="swiper__img">
                                <img src="../static/img/image 29.jpg" alt="">
                                <span class="swiper__img-name">Airbus H125</span>
                                <span class="swiper__img-price">$2,700</span>
                            </div>

                            <div class="swiper__text">
                                <div class="swiper__text-info">
                                    <img src="../static/icon/Pass.png" height="18"/>
                                    5 пасс. + 1 пилот</div>
                                <div class="swiper__text-info">
                                    <img src="../static/icon/Group 20.png" height="16"/>
                                    259 км / час</div>
                                <div class="swiper__text-info">
                                    <img src="../static/icon/Group 21.png" height="20"/>
                                    661 км.</div>
                            </div>
                        </swiper-slide>

                    </swiper>
                </template>
                    <div class="swiper-button-prev" slot="button-prev"></div>
                    <div class="swiper-button-next" slot="button-next"></div>
                </div>

        </b-col>
    </div>
</template>

<script>
    import { Swiper, SwiperSlide, directive } from 'vue-awesome-swiper'
    import 'swiper/css/swiper.css'

    export default {
        name: "Helicopters",

        components: {
            Swiper,
            SwiperSlide
        },
        directives: {
            swiper: directive
        },
        data() {
            return {
                swiperOption: {
                    loop: true,
                    slidesPerView: 4,
                    spaceBetween: 20,
                    autoplay: {
                        delay: 99999,
                        disableOnInteraction: false,
                    },
                    navigation: {
                        nextEl: '.swiper-button-next',
                        prevEl: '.swiper-button-prev',
                    },

                },
            }
        },

    }

</script>

<style lang="scss">

    .helicopters {
        min-height: 540px;
        min-width: 100%;
        padding-top: 30px;
        background: linear-gradient(0deg, rgba(51, 51, 51, 0.5), rgba(51, 51, 51, 0.5)),
        url("../static/img/Rectangle 50.jpg") no-repeat center / cover;

        h1 {
            color: #fff;
        }

        span {
            color: #fff;
            font-weight: 300;
            font-size: 14px;
            line-height: 24px;
            opacity: .8;
        }

        .swiper {
            width: 100%;
            position: relative;
            margin-top: 23px;

            .swiper-button-prev {
                left: -70px;
                color: #fff;
                zoom: 50%;
                transition: .3s;

                &:hover {
                    transform: scale(1.2);
                }
            }
            .swiper-button-next {
                right: -70px;
                color: #fff;
                zoom: 50%;
                transition: .3s;

                &:hover {
                    transform: scale(1.2);
                }
            }
        }
        .swiper-slide {
            min-height: 350px;
            background-color: #fff;

            .swiper__img img {
                transition: .3s;
            }
            &:hover .swiper__img img{
                transform: scale(1.1);
            }
            .swiper__img {
                height: 200px;
                display: flex;
                align-items: flex-end;
                justify-content: space-between;
                overflow: hidden;
                position: relative;

                span {
                    position: absolute;
                    font-weight: bold;
                    font-size: 18px;
                    line-height: 21px;
                    bottom: 5px;
                    opacity: 1;
                }
                .swiper__img-name {
                    left: 10px;
                }

                .swiper__img-price {
                    right: 10px;
                }

            }
            .swiper__text {
                padding: 25px 20px;
                font-size: 12px;
                line-height: 24px;
                color: var(--colorText);

                .swiper__text-info {
                    padding-bottom: 8px;
                    display: flex;
                    align-items: center;

                    img {
                        padding-right: 13px;
                    }
                }

            }
        }

    }

</style>
