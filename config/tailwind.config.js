module.exports = {
    content: [
      './app/helpers/**/*.rb',
      './app/javascript/**/*.js',
      './app/views/**/*',
    ],
    theme: {
      extend: {
        backgroundImage: {
          'bronwyn-headshot': "url('/images/bronwyn-headshot.jpg')",
        }
      },
    },
    plugins: [],
  }