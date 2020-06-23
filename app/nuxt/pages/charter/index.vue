<template>
    <div class="charter">

        <div class="wrapper">
            <Tabs />
            <TabsMobile />
            <FilterSeats />
            <FilterSeatsMobile />
            <div class="charter__title">Tomorrow, at your time</div>

            <CharterCard/>
        </div>

        <Footer/>
    </div>
</template>

<script>
    import CharterCard from "../../components/CharterCard"
    import Footer from "../../components/Footer"
    import FilterSeatsMobile from "../../components/FilterSeatsMobile"
    import FilterSeats from "../../components/filter-seats"
    import TabsMobile from "../../components/TabsMobile"
    import Tabs from "../../components/Tabs"


    export default {
        name: "index",

        components: {
            CharterCard,
            Footer,
            FilterSeatsMobile,
            FilterSeats,
            TabsMobile,
            Tabs,
        }
    }
</script>

<style lang="scss" scoped>

    .charter {

        .charter__title {
            font-size: 24px;
            padding-bottom: 18px;
        }
    }


    @media (max-width: 767px) {

        .charter .charter__title {
            text-align: center;
        }
    }
</style>
