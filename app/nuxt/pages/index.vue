<template>
    <div>
        <div class="wrapper">
            <Tabs/>
            <TabsMobile />
            <FilterSeats/>
            <FilterSeatsMobile/>
            <FilterCard />
            <AirportTransfer/>
            <BookNow/>
            <BusinessTrips/>
            <Experiencies/>
            <Getaways/>
        </div>
        <Helicopters/>
        <OurPartners/>
        <Footer/>
    </div>
</template>

<script>
import vSelect from 'vue-select'
import Tabs from "../components/Tabs"
import TabsMobile from "../components/TabsMobile"
import FilterSeats from "../components/filter-seats"
import FilterSeatsMobile from "../components/FilterSeatsMobile"
import AirportTransfer from "../components/Airport-Transfer"
import BookNow from "../components/BookNow"
import BusinessTrips from "../components/BusinessTrips"
import Experiencies from "../components/Experiencies"
import Getaways from "../components/Getaways"
import Helicopters from "../components/Helicopters"
import OurPartners from "../components/OurPartners"
import Footer from "../components/Footer"
import FilterCard from "../components/FilterCard"
import ModalMap from "../components/ModalMap"

export default {
    name: "index",

    components: {
        FilterCard,
        Tabs,
        TabsMobile,
        vSelect,
        FilterSeats,
        FilterSeatsMobile,
        AirportTransfer,
        BookNow,
        BusinessTrips,
        Experiencies,
        Getaways,
        Helicopters,
        OurPartners,
        Footer,
    },

}
</script>

<style lang="scss">

</style>

