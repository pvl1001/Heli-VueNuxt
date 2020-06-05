<template>
    <div class="our-partners">
        <b-row>
            <b-col>
                <h1>Our partners</h1>
                <span>This could be your advertising.</span>
                <b-link href="#" class="heli-btn">JOIN US</b-link>
            </b-col>
        </b-row>
    </div>
</template>

<script>
    export default {
        name: "OurPartners"
    }
</script>

<style lang="scss" scoped>

    .our-partners {
        display: flex;
        justify-content: center;
        text-align: center;
        padding: 50px 0;

        span {
            font-weight: 300;
            font-size: 24px;
            line-height: 36px;
            padding: 30px 0;
            display: block;
        }

        .heli-btn {
            margin: 0 auto;
        }

    }

</style>
