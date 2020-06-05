<template>
    <div class="footer">
        <b-col class="wrapper d-flex">
            <b-col cols="3" class="contacts">
                <img src="../static/icon/LogoFFF.png" height="51"/>
                <div class="contacts__contacts">CONTACTS</div>
                <div class="contacts__phone">+7 999 XXX XX XX</div>
                <div class="contacts__email">EXAMPLE@HELIHOP.COM</div>
                <div class="contacts__address">Address</div>
            </b-col>
            <b-col class="d-flex info">
                <div class="info__about">
                    <b-link href="#">about</b-link>
                    <b-link href="#">Safety & Security</b-link>
                    <b-link href="#">Who's Flying Ascent</b-link>
                    <b-link href="#">Partner with Ascent</b-link>
                    <b-link href="#">Sustainability</b-link>
                    <b-link href="#">Privacy Policy</b-link>
                    <b-link href="#">Blog</b-link>
                </div>
                <div class="info__services">
                    <b-link>services</b-link>
                    <b-link>Search for Flights</b-link>
                    <b-link>Airport Transfer</b-link>
                    <b-link>Locations</b-link>
                    <b-link>Lounges</b-link>
                    <b-link>For Business</b-link>
                </div>
                <div class="info__support">
                    <b-link>support</b-link>
                    <b-link>How Ascent Works</b-link>
                    <b-link>Useful Travel Info</b-link>
                    <b-link>Luggage Guide</b-link>
                    <b-link>Weather Guide</b-link>
                    <b-link>Cancellation Guide</b-link>
                    <b-link>Terms of Service</b-link>
                    <b-link>FAQs</b-link>
                </div>
                <div class="info__account">
                    <b-link>account</b-link>
                    <b-link>My Account</b-link>
                    <b-link>Create Account</b-link>
                    <b-link>Login</b-link>
                </div>
            </b-col>
        </b-col>
    </div>
</template>

<script>
    export default {
        name: "Footer"
    }
</script>

<style lang="scss" scoped>

    .footer {
        background-color: var(--colorBg);
        color: #fff;
        padding: 33px 0;

        a {
            display: block;
            color: #fff;
        }

        .contacts {
            border-right: 1px solid #fff;
            font-size: 14px;
            line-height: 21px;
            letter-spacing: 0.25em;
            text-transform: uppercase;

            img {
                margin-bottom: 94px;
            }
            .contacts__contacts {
                font-size: 18px;
            }
            .contacts__contacts,
            .contacts__phone,
            .contacts__email {
                padding-bottom: 15px;
            }
            .contacts__address {
                text-transform: none;;
            }
        }

        .info {
            padding-bottom: 120px;

            div {
                padding-right: 80px;
                display: flex;
                flex-direction: column;

                a {
                    color: #fff;
                    width: fit-content;
                    height: 26px;
                    margin-bottom: 5px;
                    font-weight: 300;
                    font-size: 14px;
                    line-height: 32px;
                    border-bottom: 1px solid transparent;
                    transition: .3s;

                    &:hover {
                        border-color: #fff;
                    }
                }

                a:first-child {
                    height: 22px;
                    text-transform: uppercase;
                    margin-bottom: 10px;
                    font-size: 18px;
                    line-height: 21px;
                    letter-spacing: 0.25em;
                    font-weight: normal;
                }
            }
        }
    }

</style>
