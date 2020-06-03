<template>
    <div>
        <div class="wrapper">
            <Tabs/>
            <FilterSeats/>
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
import FilterSeats from "../components/filter-seats"
import AirportTransfer from "../components/Airport-Transfer"
import BookNow from "../components/BookNow"
import BusinessTrips from "../components/BusinessTrips"
import Experiencies from "../components/Experiencies"
import Getaways from "../components/Getaways"
import Helicopters from "../components/Helicopters"
import OurPartners from "../components/OurPartners"
import Footer from "../components/Footer"

export default {
    name: "index",

    components: {
        Tabs,
        vSelect,
        FilterSeats,
        AirportTransfer,
        BookNow,
        BusinessTrips,
        Experiencies,
        Getaways,
        Helicopters,
        OurPartners,
        Footer
    },

}
</script>

<style lang="scss">

</style>

