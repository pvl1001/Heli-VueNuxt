<template>

    <div>
        <b-modal id="selectCity" size="xl" centered hide-header hide-footer>
            <div class="d-flex select__block">
                <div class="select">
                    <img class="select__logo" src="../static/icon/Union.png" height="24"/>
                    <v-select :options="['Canada', 'United States']"></v-select>
                </div>

                <div class="select">
                    <div class="select-reverse">
                        <img class="select-reverse__img" src="../static/svg/arrow.svg" height="18"/></div>
                    <v-select :options="['Canada', 'United States']"></v-select>
                </div>
            </div>

            <GmapMap
                :center="{lat:59.9315223, lng:30.0285828}"
                :zoom="10"
                map-type-id="terrain"
                style="width: 100%; height: 580px"
            >
                <GmapMarker
                    :key="index"
                    :clickable="true"
                    :draggable="true"
                />
            </GmapMap>

        </b-modal>
        <b-modal id="selectCityMobile" size="xl" centered hide-header hide-footer>
            <div class="d-flex select__block">
                <div class="select">
                    <img class="select__logo" src="../static/icon/Union.png" height="24"/>
                    <v-select :options="['Canada', 'United States']"></v-select>
                </div>

                <div class="select">
                    <div class="select-reverse">
                        <img class="select-reverse__img" src="../static/svg/arrow.svg" height="18"/></div>
                    <v-select :options="['Canada', 'United States']"></v-select>
                </div>
            </div>

            <GmapMap
                ref="map"
                :center="{lat:59.9315223, lng:30.0285828}"
                :zoom="10"
                map-type-id="terrain"
                style="width: 100%; height: 580px"
            >
                <GmapMarker
                    :key="index"
                    :position="position"
                    :map="position"
                    :clickable="true"
                    :draggable="true"
                    :icon="{ url: '../static/icon/Union.png' }"
                    @click="center=m.position"
                />
            </GmapMap>

        </b-modal>
    </div>

</template>

<script>
    export default {
        name: "ModalMap",

        data() {
            return {
                position: {lat: 59.9315223, lng: 30.0285828},
                index: '',
            }
        },
        methods: {}
    }
</script>

<style lang="scss">

    #selectCity,
    #selectCityMobile {

        .modal-body {
            padding: 0;
        }

        .select__block {
            padding-bottom: 13px;
            justify-content: space-between;
        }

        .select {
            width: calc(50% - 1px);
            margin: 0;
        }

        .modal-content {
            background-color: transparent;
        }

    }

    @media (max-width: 1023px) {

        #selectCityMobile {

            .modal-body,
            .modal-open .modal {
                padding: 0 !important;
            }

            .vue-map-container {
                height: 350px !important;
            }

            .modal-dialog {
                margin: 0 auto;
            }

        }

    }

</style>
