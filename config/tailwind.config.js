const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      backgroundImage : {
        'randomhead0' : "url('hero0.jpg')",
        'randomhead1' : "url('hero1.jpg')",
        'randomhead2' : "url('hero2.jpg')",
        'randomhead3' : "url('hero3.jpg')",
        'randomhead4' : "url('hero4.jpg')",
        'randomhead69' : "url('hero69.jpg')",
        'teamspace' : "url('teamspace.jpg')",
        'teamspace2' : "url('teamspace2.jpg')",
        'errorhead' : "url('errorhead.jpg')",
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
