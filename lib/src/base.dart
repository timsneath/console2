import 'colors.dart';

class Console {
  /** The standard ANSI/VT100 escape sequence. **/
  static const String ansiEscape = '\u001b';

  static void setDisplayAttribute(List<int> attributes) {
    var controlSequence = "${ansiEscape}[";
    controlSequence += attributes.join(';');
    controlSequence =
        controlSequence.substring(0, controlSequence.length - 1) + 'm';
    print(controlSequence);
  }

  static void backgroundColor(NamedColors color) {
    setDisplayAttribute([BackgroundColors[color]]);
  }

  static void foregroundColor(NamedColors color) {
    setDisplayAttribute([ForegroundColors[color]]);
  }

  /** Resets foreground and background console colors to their defaults. */
  static void resetColor() {
    setDisplayAttribute([0]);
  }

  /** Prints a string to the console. */
  static void write(String text) => print(text);

  /** Prints a string to the console, followed by a newline. */
  static void writeLine(String text) => print(text + '\n');
}
