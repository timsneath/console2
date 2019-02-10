import 'package:console2/console2.dart';

void main() {
  Console.writeLine('This line is in the default console color.');
  Console.writeLine('This line is in green.', foreground: NamedColors.green);

  Console.write('Hello ');
  Console.write('red ', foreground: NamedColors.red);
  Console.writeLine('world!');

  Console.writeLine('This line is black on blue.',
      foreground: NamedColors.black, background: NamedColors.brightBlue);

  Console.write(' A ', foreground: NamedColors.black);
  Console.write(' B ', foreground: NamedColors.red);
  Console.write(' C ', foreground: NamedColors.green);
  Console.writeLine(' D ', foreground: NamedColors.yellow);
  Console.write(' E ', foreground: NamedColors.blue);
  Console.write(' F ', foreground: NamedColors.magenta);
  Console.write(' G ', foreground: NamedColors.cyan);
  Console.writeLine(' H ', foreground: NamedColors.white);

  Console.write(' A ', foreground: NamedColors.brightBlack);
  Console.write(' B ', foreground: NamedColors.brightRed);
  Console.write(' C ', foreground: NamedColors.brightGreen);
  Console.writeLine(' D ', foreground: NamedColors.brightYellow);
  Console.write(' E ', foreground: NamedColors.brightBlue);
  Console.write(' F ', foreground: NamedColors.brightMagenta);
  Console.write(' G ', foreground: NamedColors.brightCyan);
  Console.writeLine(' H ', foreground: NamedColors.brightWhite);

  Console.writeLine('This line is back to the default color.');
}
