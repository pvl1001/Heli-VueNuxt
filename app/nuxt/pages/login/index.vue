<template>
    <b-container fluid>
            <div class="login">
                <div class="wrapper">
                    <b-row>
                        <b-col>
                            <b-tabs active-nav-item-class="active-nav-item" no-nav-style no-body>
                                <b-tab title-link-class="title-link" title="Profile" active>

                                    <h1>Welcome, {{ username }}!</h1>
                                    <div class="login__last-login">Last login: 10:41 AM / 26 May 2020</div>

                                    <div class="cont position-relative justify-content-between">
                                        <div class="profile">
                                            <div class="profile__title">Profile</div>
                                            <div class="profile__email">E-mail:
                                                <span>example@example.com</span>
                                            </div>
                                            <div class="profile__block">
                                                <div class="profile__block_input">
                                                    First Name
                                                    <b-input type="text"></b-input>
                                                </div>
                                                <div class="profile__block_input">
                                                    Address
                                                    <b-input type="text"></b-input>
                                                </div>
                                                <div class="profile__block_input">
                                                    Phone Number
                                                    <b-input type="tel"></b-input>
                                                </div>
                                            </div>

                                            <div class="profile__block">
                                                <div class="profile__block_input last-name">
                                                    <div>Last Name</div>
                                                    <div class="d-flex justify-content-between">
                                                        <b-input></b-input>
                                                        <v-date-picker
                                                            class="calendar"
                                                            v-model="date"
                                                            :popover="{ placement: 'bottom', visibility: 'click' }"
                                                            :input-props='{
                                                placeholder: "MM/DD/YYYY",
                                                readonly: true,
                                                }'
                                                        />
                                                    </div>

                                                </div>
                                                <div class="profile__block_input country">
                                                    Country
                                                    <b-input type="text"></b-input>
                                                </div>
                                                <div class="profile__block_input">
                                                    Your password
                                                    <b-input type="password" size="40"/>
                                                    <span class="change">Change</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="member">
                                            <div class="member__title">Member status</div>
                                            <div class="member__card">
                                                <div class="member__card_gold">
                                                    Gold <img src="../../static/icon/medal.png" height="100%"/>
                                                </div>
                                                <div class="member__card_code">
                                                    Referral code: <span>xyz123xyz</span>
                                                    <b-link href="#"><img src="../../static/icon/copy.png" height="24"/></b-link>
                                                </div>
                                            </div>

                                            <div class="member__title">Your credits</div>
                                            <div class="member__card credits">
                                                <div class="credits__volume">10,000 Credits</div>
                                                <div class="member__unit">
                                                    <span>1 Credit</span>
                                                    <span>=</span>
                                                    <span>$0,1</span>
                                                </div>
                                                <div class="member__unit-counter">
                                                    <b-link href="#">+</b-link>
                                                    <div>10,000</div>
                                                    <b-link href="#">-</b-link>
                                                </div>
                                                <b-link href="#" class="member__btn btn">BUY</b-link>
                                            </div>

                                        </div>
                                    </div>

                                </b-tab>


                                <b-tab title-link-class="title-link" title="Orders">
                                    <div class="orders">
                                        <div class="orders__title">Orders</div>

                                        <OrdersCard/>
                                        <OrdersCard/>

                                        <div class="member">
                                            <div class="member__title">Member status</div>
                                            <div class="member__card">
                                                <div class="member__card_gold">
                                                    Gold <img src="../../static/icon/medal.png" height="100%"/>
                                                </div>
                                                <div class="member__card_code">
                                                    Referral code: <span>xyz123xyz</span>
                                                    <b-link href="#"><img src="../../static/icon/copy.png" height="24"/></b-link>
                                                </div>
                                            </div>

                                            <div class="member__title">Your credits</div>
                                            <div class="member__card credits">
                                                <div class="credits__volume">10,000 Credits</div>
                                                <div class="member__unit">
                                                    <span>1 Credit</span>
                                                    <span>=</span>
                                                    <span>$0,1</span>
                                                </div>
                                                <div class="member__unit-counter">
                                                    <b-link href="#">+</b-link>
                                                    <div>10,000</div>
                                                    <b-link href="#">-</b-link>
                                                </div>
                                                <b-link href="#" class="member__btn btn">BUY</b-link>
                                            </div>

                                        </div>
                                    </div>
                                </b-tab>
                            </b-tabs>

                        </b-col>
                    </b-row>

                </div>

            </div>
        <Footer/>
    </b-container>
</template>

<script>
    import Footer from "../../components/Footer";
    import OrdersCard from "../../components/OrdersCard";

    export default {
        name: "index",

        components: {
            Footer,
            OrdersCard,
        },

        data() {
            return {
                date: '',
                username: 'Username',
            }
        }
    }
</script>

<style lang="scss">

    .login {
        margin-top: -94px;
        position: relative;

        .cont {
            display: flex;
            min-height: 560px;
        }

        .title-link {
            padding: 0;
            margin: 0 44px 64px 0;
            font-weight: 300;
            font-size: 18px;
            transition: .2s;
            border-bottom: 3px solid transparent;


            &:hover {
                color: var(--colorBg)
            }
        }

        .nav li:last-child .title-link {
            margin-right: 0;
        }

        .active-nav-item {
            border-bottom: 3px solid var(--colorBg);
            -webkit-text-stroke: 1px var(--colorText);
        }

        .login__last-login {
            font-weight: 300;
            font-size: 18px;
            line-height: 21px;
            margin-bottom: 30px;
        }

        .profile {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            height: 100%;
            width: calc(100% - 297px);
            position: relative;
        }

        .profile__title {
            font-weight: bold;
            font-size: 24px;
            line-height: 28px;
            margin-bottom: 21px;
            width: 100%;
        }

        .profile__email {
            font-weight: 300;
            font-size: 12px;
            line-height: 14px;
            color: #000;
            margin-bottom: 23px;
            width: 100%;

            span {
                padding-left: 23px;
                font-size: 14px;
                line-height: 16px;
            }
        }

        .profile__block {
            width: calc(50% - 5px);

            .last-name {
                flex: 1 0 100%;

                div > input:nth-child(1) {
                    width: calc(100% - 168px);
                }

                .calendar {
                    width: 158px;
                    height: 60px;
                }
            }

            .profile__block_input {
                font-weight: 300;
                font-size: 12px;
                line-height: 14px;
                color: #000000;
                margin-bottom: 16px;
                position: relative;

                input {
                    margin-top: 8px;
                }

                input[type="password"] {
                    font: large Verdana,sans-serif;
                    letter-spacing: -1px;
                    font-weight: bold;
                    color: var(--colorBg);
                }

                .change {
                    position: absolute;
                    top: calc(50% + 2px);
                    right: 34px;
                    color: var(--colorBg);
                    font-size: 14px;
                    line-height: 16px;
                    cursor: pointer;
                }

            }

            .country input {
                background: url('../../static/icon/downBlue.png') calc(100% - 18px) 50% / 19px no-repeat;
            }

        }


        .member {
            width: 280px;
            font-weight: 300;
            font-size: 12px;
            line-height: 14px;
            color: #000000;
            position: absolute;
            right: 0;

            .member__title {
                font-weight: bold;
                font-size: 24px;
                line-height: 28px;
                margin-bottom: 14px;
                width: 100%;
            }

            .member__card {
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                margin-bottom: 28px;
            }

            .member__card_gold {
                background-color: #FBB03B;
                width: 100%;
                height: 86px;
                color: #fff;
                font-weight: bold;
                font-size: 24px;
                line-height: 28px;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 12px;

                img {
                    padding-left: 43px;
                }
            }

            .member__card_code {
                display: flex;
                align-items: center;
                justify-content: center;
                height: 57px;

                span {
                    font-weight: bold;
                    padding-left: 5px;
                }

                a {
                    margin-left: 50px;
                }
            }

            .credits {
                display: flex;
                align-items: center;
                flex-direction: column;
                padding-top: 25px;

                .credits__volume {
                    font-weight: bold;
                    font-size: 24px;
                    line-height: 28px;
                    text-align: center;
                    color: #4FABDC;
                    margin-bottom: 28px;
                }

                .member__unit {
                    font-size: 14px;
                    line-height: 16px;
                    color: #828282;
                    margin-bottom: 10px;

                    span:nth-child(2) {
                        padding: 0 9px;
                    }
                }

                .member__unit-counter {
                    width: 158px;
                    height: 60px;
                    border: 1px solid rgba(79, 171, 220, 0.25);
                    box-sizing: border-box;
                    border-radius: 2px;
                    display: flex;
                    align-items: center;
                    justify-content: space-between;
                    padding: 0 15px;
                    margin-bottom: 29px;

                    a {
                        display: block;
                        font-weight: bold;
                        font-size: 14px;
                        line-height: 16px;
                        text-align: center;
                        color: #4FABDC;
                        cursor: pointer;
                        padding: 10px;
                    }

                    div {
                        font-size: 14px;
                        line-height: 16px;
                        color: #000000;
                    }

                }

                .member__btn {
                    width: 130px;
                    margin-bottom: 27px;
                }
            }

        }

        .orders {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            height: 100%;
            position: relative;
            min-height: 560px;

            .orders__title {
                width: 100%;
                font-weight: bold;
                font-size: 24px;
                line-height: 28px;
                margin-bottom: 43px;
            }
        }

    }

    @media (max-width: 767px) {

        .cont {
            flex-wrap: wrap;
        }

        .login .profile,
        .login .profile__block {
            width: 100%;
            margin-right: 0;
        }

        .login .wrapper {
            padding: 30px 0px;
        }

        .login .member,
        .orders .member {
            position: relative;
            width: 100%;
        }

        /*.login .footer {*/
        /*    margin: 0;*/
        /*}*/

    }
</style>

