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

    input {
        border-radius: 2px;
    }

    .select__block {
        img {
            position: absolute;
            top: calc(50% - 12px);
            left: 20px;
        }
    }

    .select {
        width: 30%;
        display: inline-block;
        position: relative;
        margin-right: 2px;

        &:nth-child(3),
        &:nth-child(4) {
            width: 15%;
        }
        &:nth-child(5) {
            width: 7%;
        }
        &:nth-child(6) {
            width: 5%;
            background-color: #4FABDC;
            height: 100%;
            border-radius: 2px;

            img {
                top: calc(50% - 10px);
                left: calc(50% - 10px);
            }
        }
    }

    .select2 {
        position: absolute;
        background-color: #4FABDC;
        border-radius: 50%;
        height: 30px;
        width: 30px;
        top: calc(50% - 15px);
        left: -18px;
        z-index: 1;

        .select2__img {
            top: calc(50% - 9px);
            left: calc(50% - 10.5px);
        }
    }

    .select .vs__dropdown-toggle {
        height: 60px;
        border-radius: 2px;
        border-color: rgba(79, 171, 220, 0.25);
        padding-left: 50px;
    }

    .vs__search {
        padding-left: 0 !important;
    }

    .select .vs__selected {
        height: 50px;
    }

    .select .vs__search::placeholder {
        display: flex;
        align-items: center;
    }

    .select .vs__actions {
        display: none;
    }

    .select .vs__search {
    }

</style>

