import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async {
  var commandRunner = CommandRunner()..addCommand(HelpCommand());
  commandRunner.run(arguments);
}
