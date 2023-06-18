module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    './node_modules/flowbite/**/*.js'
  ],
  theme: {
    extend: {
      backgroundImage: {
        'bronwyn-headshot': "url('/images/bronwyn-headshot.jpg')",
      }
    },
  },
  plugins: [
    require('flowbite/plugin')
  ]
}