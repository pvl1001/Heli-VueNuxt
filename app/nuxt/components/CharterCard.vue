<template>
    <div>
        <div v-for="item in 3" :key="item" class="charter-card">

            <div class="charter-card__content">
                <div class="date-company">
                    <div class="date-company__date">4 APRIL 2020</div>
                    <div class="date-company__operated">Operated by</div>
                    <div class="date-company__operated-img"></div>
                    <!--                <img class="operated-img" src="../static/img/operatedHelistar.png" alt="image" width="127px">-->
                </div>
                <div class="departure-arrival">
                    <div class="departure-arrival__title">Take-off</div>
                    <div class="departure-arrival__place">
                        <div>Helipad 1</div>
                        <div>London</div>
                    </div>
                    <div class="departure-arrival__time">12:00 PM</div>
                    <div class="departure-arrival__check-in">
                        <span>Check-in</span>
                        <span>11:40 PM</span>
                    </div>
                </div>

                <div class="time-dashed">30 min</div>

                <div class="departure-arrival">
                    <div class="departure-arrival__title">Landing</div>
                    <div class="departure-arrival__place">
                        <div>Helipad 2</div>
                        <div>London</div>
                    </div>
                    <div class="departure-arrival__time">12:30 PM</div>
                </div>

            </div>

            <div class="charter-card__content">
                <div class="airbus">
                    <div class="airbus__name">Airbus H125</div>
                    <div class="airbus__included">
                        <span>Included:</span>
                        <img src="../static/icon/coffi.png" alt="image" width="18">
                        <img src="../static/icon/sofa.png" alt="image" width="20">
                    </div>
                    <div class="airbus__booking-options">
                        <span>Booking<br>options:</span>
                        <img src="../static/icon/car.png" alt="image" width="18">
                        <img src="../static/icon/case.png" alt="image" width="20">
                    </div>
                </div>

                <div class="airbus-foto"></div>

                <div class="book">
                    <div class="book__starting">Starting from</div>
                    <div class="book__price">$1,500</div>
                    <a href="#" class="book__btn">BOOK</a>
                </div>
            </div>

        </div>
    </div>
</template>

<script>
    export default {
        name: "CharterCard"
    }
</script>

<style lang="scss" scoped>

    .charter-card {
        width: 100%;
        height: 160px;
        display: flex;
        box-sizing: border-box;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        transition: .3s;
        margin-bottom: 20px;

        &:last-child {
            margin-bottom: 305px;
        }

        &:hover {
            box-shadow: 0 4px 10px rgba(79, 171, 220, 0.25);
        }

        > .charter-card__content:nth-child(1) {
            width: 53%;
            padding: 15px 26px;
            display: flex;
            justify-content: space-between;

            .date-company {
                flex-direction: column;
                width: 152px;
                height: 100%;
                display: flex;
                margin-right: 41px;

                .date-company__date {
                    text-transform: uppercase;
                    font-size: 18px;
                    line-height: 21px;
                    font-weight: bold;
                    padding-bottom: 5px;
                }

                .date-company__operated {
                    font-size: 12px;
                    line-height: 14px;
                    padding-bottom: 11px;
                }

                /*.operated-img {*/
                /*    margin-left: auto;*/
                /*    display: block;*/
                /*}*/

                .date-company__operated-img {
                    flex: 1 1 100%;
                    background: url('../static/img/operatedHelistar.png') 100% 0 / contain no-repeat;
                    width: 127px;
                    transform: translateX(15px);
                }

            }

            .departure-arrival {
                flex-direction: column;
                /*width: 152px;*/
                height: 100%;
                display: flex;
                align-items: center;

                .departure-arrival__title {
                    font-weight: bold;
                    font-size: 14px;
                    line-height: 16px;
                    padding-bottom: 14px;
                }

                .departure-arrival__place {
                    padding-left: 35px;
                    background: url('../static/icon/Union.png') 0 50% / auto 24px no-repeat;
                    margin-bottom: 12px;

                    > div:nth-child(1) {
                        font-size: 14px;
                        line-height: 16px;
                        color: #000000;
                        padding-bottom: 1px;
                    }

                    > div:nth-child(2) {
                        font-size: 12px;
                        line-height: 14px;
                        color: #828282;
                    }
                }

                .departure-arrival__time {
                    width: 120px;
                    height: 40px;
                    border: 1px solid var(--colorBg);
                    border-radius: 20px;
                    padding: 12px;
                    display: flex;
                    align-items: center;
                    font-weight: bold;
                    font-size: 14px;
                    background: url('../static/icon/clock.png') calc(100% - 12px) 50% / 20px no-repeat;
                    transition: .3s;
                    margin-bottom: 4px;

                    &:hover {
                        background: url('../static/icon/clockBlue.png') calc(100% - 12px) 50% / 20px no-repeat;
                    }
                }

                .departure-arrival__check-in {
                    font-weight: bold;
                    font-size: 12px;
                    line-height: 14px;
                    color: rgba(79, 171, 220, 0.5);
                }
            }

            .time-dashed {
                height: 94px;
                border-bottom: 1px dashed #4FABDC;
                flex-grow: 1;
                justify-content: center;
                display: flex;
                align-items: flex-end;
                padding-bottom: 13px;
                font-size: 14px;
                line-height: 16px;
                letter-spacing: 0.5em;
                white-space: pre;
            }

        }

        > .charter-card__content:nth-child(2) {
            width: 47%;
            display: flex;

            .airbus {
                padding: 15px 22px;
                background-color: #F2F2F2;
                width: fit-content;
                height: 100%;

                .airbus__name {
                    text-transform: uppercase;
                    font-size: 18px;
                    line-height: 21px;
                    font-weight: bold;
                    background: url('../static/icon/airbus.png') 0 50% / 20px no-repeat;
                    padding-left: 30px;
                    margin-bottom: 28px;
                }

                .airbus__included,
                .airbus__booking-options {
                    font-weight: bold;
                    font-size: 12px;
                    line-height: 14px;
                    display: flex;
                    align-items: center;
                    padding-bottom: 15px;
                    text-align: right;

                    span {
                        width: 50px;
                    }

                    img:nth-child(2) {
                        margin-left: 21px;
                    }

                    img:nth-child(3) {
                        margin-left: 17px;
                    }
                }
            }

            .airbus-foto {
                height: 100%;
                flex-grow: 1;
                background: url('../static/img/image 23.png') 0 50% / cover no-repeat;
            }

            .book {
                background-color: var(--colorBg);
                color: #fff;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                padding: 0 20px;

                .book__startingst {
                    font-size: 12px;
                    line-height: 14px;
                    padding-bottom: 8px;
                }

                .book__price {
                    font-weight: bold;
                    font-size: 24px;
                    line-height: 28px;
                    padding-bottom: 19px;
                }

                .book__btn {
                    text-transform: uppercase;
                    border: 1px solid #FFFFFF;
                    color: #fff;
                    box-sizing: border-box;
                    border-radius: 30px;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    width: 120px;
                    height: 40px;
                    font-size: 14px;
                    line-height: 16px;
                    letter-spacing: 0.5em;
                    transition: .3s;

                    &:hover {
                        background-color: #fff;
                        border-color: var(--colorBg);
                        color: var(--colorBg);
                    }
                }
            }

        }
    }


    @media (max-width: 1023px) {

        .charter-card {
            flex-wrap: wrap;
            height: auto;

            .charter-card__content {
                width: 100% !important;
            }

        }

    }

    @media (max-width: 767px) {

        .charter-card .charter-card__content {
            flex-wrap: wrap;
        }

        .charter-card .charter-card__content:nth-child(1) .date-company,
        .charter-card > .charter-card__content:nth-child(2) .airbus,
        .charter-card > .charter-card__content:nth-child(2) .airbus-foto,
        .charter-card > .charter-card__content:nth-child(2) .book {
            width: 100%;
            height: 155px;
        }

        .charter-card > .charter-card__content:nth-child(1) .departure-arrival {
            width: 50%;
            height: auto;
        }

        .charter-card > .charter-card__content:nth-child(1) .time-dashed {
            order: 1;
            margin: 0 -25px;
            height: 44px;
            width: 50%;
            margin: 15px auto 0;
            border-left: 1px dashed #4FABDC;
            border-right: 1px dashed #4FABDC;
            flex-grow: 0;
            border-radius: 0 0 20px 20px;
        }


        .charter-card > .charter-card__content:nth-child(1) .date-company {
            margin: 0;
            align-items: center;
        }

        .charter-card > .charter-card__content:nth-child(2) .airbus {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .charter-card {
            margin-bottom: 50px;
        }

    }

</style>
