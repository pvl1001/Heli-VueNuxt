import Vue from 'vue';
import VCalendar from 'v-calendar';

Vue.use(VCalendar, {
    datePickerTintColor: '#112749',
    datePickerShowDayPopover: true,
    popoverVisibility: 'visible',
    datePickerDisabledAttribute: {
        contentStyle: ({ isHovered }) => ({
            color: '#98A1B0',
            fontWeight: 600,
            opacity: 0.6,
            borderRadius: '50%',
            backgroundColor: '#F4F4F5',
            ...(isHovered && {
                cursor: 'not-allowed',
                backgroundColor: 'transparent',
            })
        })
    },
    formats: {
        title: 'MMMM YYYY',
        weekdays: 'WW',
        navMonths: 'MMM',
        input: ['L', 'YYYY-MM-DD', 'YYYY/MM/DD'],
        dayPopover: 'L',
    }
});
