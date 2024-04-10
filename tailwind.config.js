module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/views/**/*.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    './node_modules/flowbite/**/*.js'
  ],
  theme: {
    extend: {
      screens: {
        xs: '480px',
        sm: '640px',
        md: '768px',
        lg: '1024px',
        xl: '1280px',
      },
      backgroundImage: {
        "main-sidebar": 'url(sidebar-cta-2.jpg)',
      },
      colors: {
        'primary': {
          DEFAULT: '#FF0005',
          50: '#FFB8B9',
          100: '#FFA3A5',
          200: '#FF7A7D',
          300: '#FF5255',
          400: '#FF292D',
          500: '#FF0005',
          600: '#C70004',
          700: '#8F0003',
          800: '#570002',
          900: '#1F0001',
          950: '#030000'
        },
        'gray': {
          DEFAULT: '#222222',
          50: '#BBBBBB',
          100: '#B1B1B1',
          200: '#9C9C9C',
          300: '#888888',
          400: '#747474',
          500: '#5F5F5F',
          600: '#4B4B4B',
          700: '#363636',
          800: '#222222',
          900: '#060606',
          950: '#000000'
        },
      }
      
    },
    
    fontFamily: {
      'body': [
        'Lato',
        'Varela Round',
        'Inter',
        'ui-sans-serif',
        'system-ui',
        '-apple-system',
        'system-ui',
        'Segoe UI',
        'Roboto',
        'Helvetica Neue',
        'Arial',
        'Noto Sans',
        'sans-serif',
        'Apple Color Emoji',
        'Segoe UI Emoji',
        'Segoe UI Symbol',
        'Noto Color Emoji'
      ],
      'sans': [
        'Inter',
        'ui-sans-serif',
        'system-ui',
        '-apple-system',
        'system-ui',
        'Segoe UI',
        'Roboto',
        'Helvetica Neue',
        'Arial',
        'Noto Sans',
        'sans-serif',
        'Apple Color Emoji',
        'Segoe UI Emoji',
        'Segoe UI Symbol',
        'Noto Color Emoji'
      ],
      'heading': [
        'Noto Serif',
        'serif'
      ]
      
    },    
    
  },
  plugins: [
    require('flowbite/plugin')
  ],
}
