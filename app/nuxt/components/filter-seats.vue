<template>
    <div>
        <b-row class="my-1">
            <b-col cols="12" class="d-flex select__block">
                <div class="select">
                    <img class="select__logo" src="../static/icon/Union.png" height="24"/>
                    <v-select :options="['Canada', 'United States']"></v-select>
                </div>
                <div class="select">
                    <div class="select2"><img class="select2__img" src="../static/svg/arrow.svg" height="18"/></div>
                    <v-select :options="['Canada', 'United States']"></v-select>
                </div>


                <div class="select calendar">
                    <v-date-picker
                        v-model="date"
                        :popover="{ placement: 'bottom', visibility: 'click' }"
                        :input-props='{
                           placeholder: "MM/DD/YYYY",
                           readonly: true,
                           }'
                    />
                    <img src="../static/icon/calendar.png" height="20"/>
                </div>
                <div class="select">
                    <div ></div>
                    <v-select :options="['Canada', 'United States']"></v-select>
                </div>
                <div class="select">
                    <div ></div>
                    <v-select :options="['1', '2']"></v-select>
                </div>
                <b-link href="#" class="select">
                    <img src="../static/icon/search.png" height="20"/>
                </b-link>
            </b-col>
        </b-row>

        <b-row class="cards">
            <b-col class="cards-padding" v-for="index in 4" :key="index">
                <div class="card__body">
                    <span>Airport transfers</span>
                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente, voluptates..</span>
                </div>
            </b-col>
        </b-row>

    </div>
</template>

<script>
    export default {
        name: "FilterSeats",

        data() {
            return {
                date: '',
            }
        },
        methods: {

        }
    }
</script>

<style lang="scss">

    .cards-padding {
        padding: 10px;
        transition: .3s;
    }

    .cards {
        padding: 5px;
    }

    input {
        border-radius: 2px;
    }

    .select__block {
        padding-bottom: 23px;

        .select__logo {
            position: absolute;
            top: calc(50% - 12px);
            left: 20px;
        }
    }

    .select {
        width: 30%;
        display: inline-block;
        position: relative;
        margin-right: 2px;

        &:nth-child(3),
        &:nth-child(4) {
            width: 15%;
        }
        &:nth-child(5) {
            width: 7%;
        }
        &:nth-child(6) {
            width: 5%;
            background-color: var(--colorBg);
            height: 100%;
            border-radius: 2px;
            display: flex;
            align-items: center;
            justify-content: center;

            img {
                transition: .3s;
            }

            &:hover img {
                transform: scale(1.2);
            }

            img {
                top: calc(50% - 10px);
                left: calc(50% - 10px);
            }
        }
    }

    .select2 {
        position: absolute;
        background-color: var(--colorBg);
        border-radius: 50%;
        height: 30px;
        width: 30px;
        top: calc(50% - 15px);
        left: -16px;
        z-index: 1;
        transition: .3s;
        display: flex;
        justify-content: center;
        align-items: center;

        &:hover {
            transform: rotate(-180deg);
        }

    }

    .select .vs__dropdown-toggle {
        height: 60px;
        border-radius: 2px;
        border-color: rgba(79, 171, 220, 0.25);
        padding-left: 50px;
    }
    .vs__search {
        padding-left: 0 !important;
    }
    .select .vs__selected {
        height: 50px;
    }
    .select .vs__search::placeholder {
        display: flex;
        align-items: center;
    }
    .select .vs__actions {
        display: none;
    }

    .card__body {
        height: 220px;
        background: url('../static/img/image 24.jpg') no-repeat top;
        background-size: cover;
        padding: 15px;
        display: flex;
        flex-wrap: wrap;
        flex-direction: column;
        justify-content: flex-end;
        color: #fff;
        font-weight: bold;
        font-size: 18px;
        transition: .5s;

        &:before {
            content: '';
            position: absolute;
            top: 10px;
            right: 10px;
            bottom: 10px;
            left: 10px;
            background: linear-gradient(180deg, rgba(0, 0, 0, 0) 73.96%, #000000 100%);
            transition: .5s;
        }

        span {
            z-index: 1;
            margin-bottom: -5px;
            padding-bottom: 7px;
        }
    }
    .card__body:hover:before {
        background: linear-gradient(0deg, rgba(51, 51, 51, 0.8), rgba(51, 51, 51, 0.8));
        transition: .5s;
    }
    .card__body:hover {
        justify-content: center;
    }
    .card__body span:last-child {
        display: none;
        font-size: 14px;
        font-weight: 300;
        line-height: 24px;
        z-index: 0;
        opacity: .7;
    }
    .card__body:hover span:last-child {
        display: block;
    }

    .calendar {
        position: relative;

        .vc-w-full {
            height: 100%;
        }

        img {
            position: absolute;
            top: calc(50% - 10px);
            right: 20px;
        }
    }

</style>

