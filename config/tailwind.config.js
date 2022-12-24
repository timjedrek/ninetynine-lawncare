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
        'head55' : "url('hero555.webp')",
      },
      height: theme => ({
        'screen-1/2': '50vh',
        'screen-2/3': '75vh',
        'screen-1/3': 'calc(100vh / 3)',
      }),
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
