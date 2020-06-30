<template>
    <div class="orders-card">
        <div class="orders-card__date">
            6 APRIL 2020
        </div>

        <div class="orders-card__body">
            <div class="orders-card__text">
                <div class="orders-card__row">
                    <div class="title">Time</div>
                    <div class="data">
                        <img src="../static/icon/clock.png" height="20"/>
                        <span>12:00 PM - 12:30 PM</span>
                    </div>
                </div>

                <div class="orders-card__row">
                    <div class="title">Arrival:</div>
                    <div class="data">
                        <img src="../static/icon/Union.png" height="24"/>
                        <span>Helipad 1</span>
                        <span class="data__city">London</span>
                    </div>
                </div>

                <div class="orders-card__row">
                    <div class="title">Departure:</div>
                    <div class="data">
                        <img src="../static/icon/Union.png" height="24"/>
                        <span>Helipad 2</span>
                        <span class="data__city">London</span>
                    </div>
                </div>

                <div class="orders-card__row">
                    <div class="title">Main passenger:</div>
                    <div class="data">
                        <div class="main-passenger">
                            <img src="../static/icon/people.png" height="21"/>
                            <span class="data__name">FIRST LAST</span>
                        </div>

                        <div class="main-passenger">
                            <img src="../static/icon/mail.png" height="22"/>
                            <span class="data__mail">example@example.com</span>
                        </div>
                        <div class="main-passenger">
                            <img src="../static/icon/phone.png" height="21"/>
                            <span class="data__phone">+7999XXXXXXX</span>
                        </div>

                    </div>
                </div>

                <div class="orders-card__row">
                    <div class="title">Options:</div>
                    <div class="data">
                        <img class="data__options-img" src="../static/icon/coffi.png" height="18"/>
                        <img class="data__options-img" src="../static/icon/sofa.png" height="13.8"/>
                        <img class="data__options-img" src="../static/icon/car.png" height="15"/>
                        <img class="data__options-img" src="../static/icon/case.png" height="17.6"/>
                    </div>
                </div>

                <div class="orders-card__row">
                    <div class="title">Total price:</div>
                    <div class="data">
                        <span class="data__total-price">$1,500</span>
                    </div>
                </div>
            </div>

            <div class="orders-card__img">
                <div class="orders-card__img_name">Airbus H125</div>
            </div>

        </div>

    </div>
</template>

<script>
    export default {
        name: "OrdersCard"
    }
</script>

<style lang="scss" scoped>

    .orders-card {
        width: calc(100% - 297px);

        .orders-card__date {
            font-weight: bold;
            font-size: 18px;
            line-height: 21px;
            color: #4FABDC;
            margin-bottom: 18px;
        }

        .orders-card__body {
            display: flex;
            background-color: #F2F2F2;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            transition: .3s;

            &:hover {
                box-shadow: 0 4px 10px rgba(79, 171, 220, 0.25);
            }

            .orders-card__row {
                display: flex;
                margin-bottom: 17px;
                align-items: center;

                &:last-child {
                    margin-bottom: 0;
                }

                .title {
                    min-width: 136px;
                    font-weight: bold;
                    font-size: 14px;
                    line-height: 16px;
                }

                .data {
                    font-size: 14px;
                    line-height: 16px;
                    color: #000000;
                    display: flex;
                    align-items: center;
                    flex-wrap: wrap;

                    img {
                        margin-right: 10px;
                    }

                    .data__city {
                        font-size: 12px;
                        line-height: 14px;
                        color: #828282;
                        margin-left: 5px;
                    }

                    .data__name {
                        text-transform: uppercase;
                        margin-right: 21px;
                    }

                    .data__mail {
                        margin-right: 21px;
                    }

                    img.data__options-img {
                        margin-right: 20px;
                    }

                    .data__total-price {
                        font-weight: bold;
                        font-size: 24px;
                        line-height: 28px;
                        text-align: center;
                        color: #333333;
                    }
                }
            }

            .orders-card__text {
                padding: 22px 20px 13px;
            }

            .orders-card__img {
                width: 227px;
                background: url('../static/img/image 23.png') left center / cover no-repeat;
                display: flex;
                flex-direction: column;
                flex-grow: 1;
                padding: 16px 14px;


                .orders-card__img_name {
                    font-weight: bold;
                    font-size: 18px;
                    line-height: 21px;
                    color: #FFFFFF;
                    text-align: right;
                }
            }
        }
    }


    @media (max-width: 1023px) {

        .orders-card .orders-card__body .orders-card__img {
            width: 100%;
            height: 300px;
        }

        .orders-card .orders-card__body {
            flex-wrap: wrap;
        }

        .main-passenger {
            display: flex;
            align-items: center;
            height: 25px;
        }

    }

    @media (max-width: 767px) {

        .orders-card {
            width: 100%;
        }

        .orders-card__body {
            margin: 0 -15px;
        }

        .orders-card__text {
            width: 100%;
        }

    }
</style>
