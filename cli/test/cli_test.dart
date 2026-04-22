import 'package:cli/cli.dart';
import 'package:test/test.dart';

void main() {
  print('Hello world!');
  test('calculate', () {
    expect(calculate(), 42);
  });
}
