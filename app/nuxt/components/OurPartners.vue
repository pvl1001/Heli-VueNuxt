<template>
    <div class="our-partners">
        <h1>Our partners</h1>
        <span>This could be your advertising.</span>
        <b-link href="#" class="btn">JOIN US</b-link>
    </div>
</template>

<script>
    export default {
        name: "OurPartners"
    }
</script>

<style lang="scss" scoped>

    .our-partners {
        text-align: center;
        padding: 50px 15px;

        span {
            font-weight: 300;
            font-size: 24px;
            line-height: 36px;
            padding: 30px 0;
            display: block;
        }

        .btn {
            margin: 0 auto;
        }

    }

    @media (max-width: 767px) {

    }

</style>
