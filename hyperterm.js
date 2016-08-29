module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 18,

    // font family with optional fallbacks
    fontFamily: '"SauceCodePro Nerd Font", "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: '#d3d0c8',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // color of the text
    foregroundColor: '#d3d0c8',

    // terminal background color
    backgroundColor: '#2d2d2d',

    // border color (window, tabs)
    borderColor: '#747369',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '0',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#2d2d2d',
      red: '#f2777a',
      green: '#99cc99',
      yellow: '#ffcc66',
      blue: '#6699cc',
      magenta: '#cc99cc',
      cyan: '#66cccc',
      white: '#d3d0c8',
      lightBlack: '#747369',
      lightRed: '#f99157',
      lightGreen: '#393939',
      lightYellow: '#515151',
      lightBlue: '#a09f93',
      lightMagenta: '#e8e6df',
      lightCyan: '#d27b53',
      lightWhite: '#f2f0ec'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: ''

    // for advanced config flags please refer to https://hyperterm.org/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: ["hyperterm-close-on-left", "hyperterm-blink"],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
