<template>
    <div>
        <b-row class="business-trips">
            <b-col cols="12">
                <h1>Getaways</h1>

                <b-row class="cards">
                    <b-col cols="12" md="" class="cards-padding" v-for="index in 4" :key="index">
                        <div class="card__content">
                            <b-link href="#" />

                            <div class="card__img">
                                <img src="../static/img/image 44.jpg" alt="">
                            </div>
                            <div class="card__text">
                                <div class="card__text-time">
                                    <div class="card__time">30 min</div>
                                    <div class="card__airplane">Airbus H125</div>
                                </div>

                                <div class="card__city">
                                    <div class="card__city-from">
                                        <div class="card__city-line"></div>
                                        <div>
                                            <div class="card__city-dot"></div>
                                            Helipad 1
                                        </div>
                                        <div>London</div>
                                    </div>
                                    <div class="card__city-to">
                                        <div>
                                            <div class="card__city-dot"></div>
                                            Helipad 1
                                        </div>
                                        <div>London</div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </b-col>
                </b-row>

            </b-col>
        </b-row>
    </div>


</template>

<script>
    export default {
        name: "Getaways"
    }
</script>

<style lang="scss" scoped>

    .getaways {

        padding-bottom: 23px;

        h1 {
            color: var(--colorText);
        }
        .card-transfer__img {
            height: 190px;
            background: url('../static/img/image 44.jpg') no-repeat top / cover;
        }
        .card-transfer__text {
            display: flex;
            padding: 16px 45px;
        }


        .card-transfer__text-time {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding-right: 20px;

            .card-transfer__time {
                font-size: 14px;
                line-height: 16px;
                letter-spacing: 0.5em;
                padding-bottom: 8px;
                color: var(--colorText);
            }
            .card-transfer__airplane {
                font-size: 14px;
                line-height: 16px;
                color: var(--colorBg);
            }

        }


        .card-transfer__city {

            font-size: 14px;
            position: relative;

            .card-transfer__city-from {
                padding-bottom: 15px;
            }
            .card-transfer__city-from > div:first-child,
            .card-transfer__city-to > div:first-child {
                position: relative;
                padding-left: 20px;
            }
            .card-transfer__city-from > div:last-child,
            .card-transfer__city-to > div:last-child {
                font-size: 12px;
                padding-left: 20px;
            }
            .card-transfer__city-dot {
                width: 10px;
                height: 10px;
                background-color: var(--colorBg);
                border-radius: 50%;
                position: absolute;
                left: -5px;
                top: 7px;
            }
            .card-transfer__city-line {
                position: absolute;
                border-left: 1px solid var(--colorBg);
                height: calc(300% - 10px);
                left: -0.5px;
                top: 10px;
            }

        }

    }

</style>

