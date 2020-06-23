module.exports = {
  /*
  ** Headers of the page
  */
  head: {
    title: 'helihop',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: 'HeliHop' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },
  /*
  ** Customize the progress bar color
  */
  loading: { color: '#3B8070' },
  /*
  ** Build configuration
  */
  css: [
      'node_modules/bootstrap/dist/css/bootstrap.css',
      'assets/css/layout.scss',
      'assets/css/colors.css',
      'assets/fonts/stylesheet.css',
],
  plugins: [
      { src: '~/plugins/vue-select.js', ssr: false },
      { src: '~/plugins/vue-awesome-swiper.js', ssr: false },
      { src: '~/plugins/v-calendar.js', ssr: false },
      { src: '~/plugins/VueGoogleMaps.js', ssr: false },
  ],
  build: {
    /*
    ** Run ESLint on save
    */
    extend (config, { isDev, isClient }) {
      if (isDev && isClient) {
        config.module.rules.push({
          enforce: 'pre',
          test: /\.(js|vue)$/,
          loader: 'eslint-loader',
          exclude: /(node_modules)/
        })
      }
    }
  }
}

