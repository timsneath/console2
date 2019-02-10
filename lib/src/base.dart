import 'dart:io';

import 'colors.dart';

/// A wrapper class for console-related methods.
class Console {
  /// The standard ANSI/VT100 escape sequence.
  static const String _ansiEscape = '\u001b';

  /// Resets foreground and background text colors to their defaults.
  static const String _resetColor = '$_ansiEscape[0m';

  /// Sets an ANSI SGR (Select Graphics Rendition) parameter
  static String _displayAttributes(List<int> attributes) {
    var controlSequence = '$_ansiEscape[';
    controlSequence += attributes.join(';');
    controlSequence =
        '${controlSequence.substring(0, controlSequence.length)}m';
    return controlSequence;
  }

  /// Prints a string to the console.
  static void write(String text,
      {NamedColors foreground, NamedColors background}) {
    final attributes = <int>[];

    if (foreground != null) {
      attributes.add(foregroundColors[foreground]);
    }

    if (background != null) {
      attributes.add(backgroundColors[background]);
    }

    if (attributes.isNotEmpty) {
      stdout.write('${_displayAttributes(attributes)}$text$_resetColor');
    } else {
      stdout.write(text);
    }
  }

  /// Prints a string to the console, followed by a newline.
  static void writeLine(String text,
      {NamedColors foreground, NamedColors background}) {
    final attributes = <int>[];

    if (foreground != null) {
      attributes.add(foregroundColors[foreground]);
    }

    if (background != null) {
      attributes.add(backgroundColors[background]);
    }

    if (attributes.isNotEmpty) {
      stdout.writeln('${_displayAttributes(attributes)}$text$_resetColor');
    } else {
      stdout.writeln(text);
    }
  }
}
