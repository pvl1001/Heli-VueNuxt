<template>
    <div>
        <b-row>
            <b-col class="book-now d-flex align-items-center justify-content-center">
                <div class="book-now__text">Don't stand in traffic, join us and use helicopter.</div>
                <b-link href="#" class="heli-btn">Book Now</b-link>
            </b-col>
        </b-row>
    </div>
</template>

<script>
    export default {
        name: "BookNow"
    }
</script>

<style lang="scss" scoped>

    .book-now {
        height: 90px;
        background-color: #FAFAFA;
        position: absolute;
        left: 0;
        padding: 0 130px;

        .book-now__text {
            font-size: 24px;
            font-weight: 300;
            color: var(--colorText);
            margin-right: 140px;
        }

    }

</style>
