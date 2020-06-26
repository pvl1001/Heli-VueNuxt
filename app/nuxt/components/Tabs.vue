<template>
    <b-col class="tabs">
        <b-row>
            <b-nav class="">
                <b-nav-item to="/" link-classes="title-link">Seats</b-nav-item>
                <b-nav-item to="/charter" link-classes="title-link">Charter</b-nav-item>
                <b-nav-item to="/excursions" link-classes="title-link">Excursions</b-nav-item>
            </b-nav>
        </b-row>
    </b-col>
</template>

<script>
    export default {
        name: "Tabs",

        computed: {}
    }
</script>

<style lang="scss">

    .title-link {
        padding: 0;
        margin: 0 44px 20px 0;
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

    .nuxt-link-exact-active {
        border-bottom: 3px solid var(--colorBg);
        -webkit-text-stroke: 1px var(--colorText);
    }

    @media (max-width: 1023px) {

        /*.tabs {*/
        /*    display: none;*/
        /*}*/

    }
</style>
