<template>
    <div>
        <b-row class="experiencies">
            <b-col cols="12">
                <h1>Experiencies</h1>

                <b-row class="cards">
                    <b-col cols="12" md="" class="cards-padding" v-for="index in 4" :key="index">
                        <div class="card__content">
                            <b-link href="#" />

                            <div class="card__img">
                                <img src="../static/img/image 40.jpg" alt="">
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
        name: "Experiencies"
    }
</script>

<style lang="scss" scoped>

    .experiencies {

        padding-bottom: 23px;

        h1 {
            color: var(--colorText);
        }

    }

</style>

