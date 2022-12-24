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
        'randomhead0' : "url('hero0.webp')",
        'randomhead1' : "url('hero1.webp')",
        'randomhead2' : "url('hero2.webp')",
        'randomhead3' : "url('hero3.webp')",
        'randomhead4' : "url('hero4.webp')",
        'randomhead69' : "url('hero69.webp')",
        'teamspace' : "url('teamspace.webp')",
        'teamspace2' : "url('teamspace2.webp')",
        'errorhead' : "url('errorhead.webp')",
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
