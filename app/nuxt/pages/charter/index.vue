<template>
    <b-container fluid>
        <div class="charter">

            <div class="wrapper">
                <Tabs/>
                <FilterSeats/>
                <FilterSeatsMobile/>
                <div class="charter__title">Tomorrow, at your time</div>

                <CharterCard/>
            </div>

            <Footer/>
        </div>
    </b-container>
</template>

<script>
    import CharterCard from "../../components/CharterCard"
    import Footer from "../../components/Footer"
    import FilterSeatsMobile from "../../components/FilterSeatsMobile"
    import FilterSeats from "../../components/filter-seats"
    import Tabs from "../../components/Tabs"


    export default {
        name: "index",

        components: {
            CharterCard,
            Footer,
            FilterSeatsMobile,
            FilterSeats,
            Tabs,
        }
    }
</script>

<style lang="scss" scoped>

    .charter {
        margin-top: -194px;

        .charter__title {
            font-size: 24px;
            padding-bottom: 18px;
        }
    }


    @media (max-width: 1023px) {
        .charter {
            margin-top: 0;
        }
    }

    @media (max-width: 767px) {

        .charter .charter__title {
            text-align: center;
        }
    }
</style>
