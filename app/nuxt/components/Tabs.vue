<template>
    <b-col>
        <b-tabs active-nav-item-class="active-nav-item" no-nav-style no-body>
            <b-tab title-link-class="title-link" title="Seats" active></b-tab>
            <b-tab title-link-class="title-link" title="Charter"></b-tab>
            <b-tab title-link-class="title-link" title="Excursions"></b-tab>
        </b-tabs>
    </b-col>
</template>

<script>
    export default {
        name: "Tabs",
    }
</script>

<style lang="scss">

    .title-link {
        padding: 0;
        margin: 27px 44px 20px 0;
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

    .active-nav-item {
        border-bottom: 3px solid var(--colorBg);
        -webkit-text-stroke: 1px var(--colorText);
    }
</style>
