/// The named ANSI/VT100 colors.
enum NamedColors {
  black,
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  white,
  brightBlack,
  brightRed,
  brightGreen,
  brightYellow,
  brightBlue,
  brightMagenta,
  brightCyan,
  brightWhite
}

/// A list of ANSI/VT100 color codes for foreground colors.
const Map<NamedColors, int> foregroundColors = {
  NamedColors.black: 30,
  NamedColors.red: 31,
  NamedColors.green: 32,
  NamedColors.yellow: 33,
  NamedColors.blue: 34,
  NamedColors.magenta: 35,
  NamedColors.cyan: 36,
  NamedColors.white: 37,
  NamedColors.brightBlack: 90,
  NamedColors.brightRed: 91,
  NamedColors.brightGreen: 92,
  NamedColors.brightYellow: 93,
  NamedColors.brightBlue: 94,
  NamedColors.brightMagenta: 95,
  NamedColors.brightCyan: 96,
  NamedColors.brightWhite: 97
};

/// A list of ANSI/VT100 color codes for background colors.
const Map<NamedColors, int> backgroundColors = {
  NamedColors.black: 40,
  NamedColors.red: 41,
  NamedColors.green: 42,
  NamedColors.yellow: 43,
  NamedColors.blue: 44,
  NamedColors.magenta: 45,
  NamedColors.cyan: 46,
  NamedColors.white: 47,
  NamedColors.brightBlack: 100,
  NamedColors.brightRed: 101,
  NamedColors.brightGreen: 102,
  NamedColors.brightYellow: 103,
  NamedColors.brightBlue: 104,
  NamedColors.brightMagenta: 105,
  NamedColors.brightCyan: 106,
  NamedColors.brightWhite: 107
};
