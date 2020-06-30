<template>
    <div class="filter-seats mobile">
        <div class="my-1 w-100">
            <b-row>
                <b-col cols="12" class="d-flex select__block">

                    <div class="select" v-b-modal.selectCityMobile>
                        <img class="select__logo" src="../static/icon/Union.png" height="24"/>
                        <v-select :options="['Canada', 'United States']"></v-select>
                    </div>

                    <div class="select" v-b-modal.selectCityMobile>
                        <div class="select-reverse"><img class="select-reverse__img" src="../static/svg/arrow.svg"
                                                         height="18"/></div>
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
                    </div>

                    <div class="select">
                        <div></div>
                        <v-select :options="['10:00', '11:00']"></v-select>
                    </div>

                    <div class="select">
                        <div></div>
                        <v-select :options="['1', '2']"></v-select>
                    </div>

                    <b-link href="#" class="select">
                        <img src="../static/icon/search.png" height="20"/>
                    </b-link>

                </b-col>
            </b-row>
        </div>

    </div>
</template>

<script>

    export default {
        name: "FilterSeatsMobile",

        components: {},

        data() {
            return {
                date: '',
            }
        },
        methods: {}
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
        height: 60px;
        background-color: #fff;

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

        .vs__dropdown-menu {
            min-width: fit-content;
        }
    }

    .select-reverse {
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
        cursor: pointer;

        &:hover {
            transform: rotate(-180deg);
        }

    }

    .select .vs__dropdown-toggle {
        height: 60px;
        border-radius: 2px;
        border-color: rgba(79, 171, 220, 0.25);
    }

    .select:nth-child(-n+2) .vs__dropdown-toggle {
        padding-left: 50px;
    }

    .select:nth-child(4) .vs__dropdown-toggle,
    .select:nth-child(5) .vs__dropdown-toggle {
        padding: 0 12px;
    }

    .select:nth-child(4) .vs__dropdown-toggle {
        background: url("../static/icon/clock.png") 90% 50% / 20px no-repeat;
    }

    .select:nth-child(5) .vs__dropdown-toggle {
        background: url("../static/icon/Pass.png") 75% 50% / 20px 18px no-repeat;
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
        position: relative;

        &:before {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background: linear-gradient(180deg, rgba(0, 0, 0, 0) 73.96%, #000000 100%);
            transition: .5s;
        }

        > a {
            width: 100%;
            height: 100%;
            position: absolute;
            display: block;
            top: 0;
            left: 0;
        }

        span {
            z-index: 1;
            margin-bottom: -5px;
            padding-bottom: 7px;
        }
    }

    .bg-hover {
        background: linear-gradient(0deg, rgba(51, 51, 51, 0.8), rgba(51, 51, 51, 0.8));
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        transition: .3s;
        opacity: 0;
    }

    .card__body:hover .bg-hover {
        opacity: 1;
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

    .filter-seats.mobile {
        display: none;
    }

    @media (min-width: 768px) and (max-width: 1023px) {
        .filter-seats.mobile {
            display: flex;
        }

        .select__block {
            flex-wrap: wrap;
            justify-content: center;
        }

        .select.calendar input {
            background: none;
        }

        .select {
            width: 49.5%;
            margin-bottom: 10px;

            &:nth-child(3),
            &:nth-child(4) {
                width: 40%;
            }

            &:nth-child(5) {
                width: 19%;
            }

            &:nth-child(6) {
                width: 100%;
            }

        }


    }

    @media (max-width: 767px) {

        .filter-seats.mobile {
            display: flex;
        }

        .cards-padding {
            padding: 10px 0;
        }

        .cards {
            padding: 0;
        }

        .select__block {
            flex-wrap: wrap;
            justify-content: center;
        }

        .card__body:before {
            right: 0;
            left: 0;
        }

        .select {
            width: 49%;
            margin-bottom: 10px;
            height: 60px;

            &:nth-child(3) {
                width: 99%;
            }

            &:nth-child(4) {
                width: 70%;
            }

            &:nth-child(5) {
                width: 28%
            }

            &:nth-child(6) {
                width: 99%;
            }

        }

    }


</style>

