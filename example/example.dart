import 'package:console2/console2.dart';

main() {
  Console.foregroundColor(NamedColors.red);
  Console.writeLine("This line is in red.");
  Console.foregroundColor(NamedColors.green);
  Console.writeLine("This line is in green.");
  Console.resetColor();
  Console.backgroundColor(NamedColors.brightBlue);
  Console.foregroundColor(NamedColors.black);
  Console.writeLine("This line is black on blue.");
  Console.resetColor();
  Console.writeLine("This line is back to the default color.");
}
