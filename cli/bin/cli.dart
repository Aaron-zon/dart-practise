import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async {
  try {
    if (int.tryParse('abc') == null) {
      throw ArgumentException('Argument 异常');
    }
  } catch(e) {
    print(e);
  }
}


