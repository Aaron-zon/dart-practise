// import 'package:cli/cli.dart' as cli;
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

const version = '0.0.1';
void main(List<String> arguments) async {
  final runner = CommandRunner();
  await runner.run(['apple', 'banana', 'orange']);

  // if (arguments.isEmpty) {
  //   print('Hello world!');
  // } else if (arguments.first == 'version') {
  //   print('Dartpedia CLI version $version');
  // } else if (arguments.first == 'search') {
  //   final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
  //   searchWikipedia(inputArgs);
  // } else {
  //   printUsage();
  // }
  // print('Hello world: ${cli.calculate()}!');
  // print('Hello world!');
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    articleTitle = arguments.join(' ');
  }

  var articleContent = await getWikipediaArticle(articleTitle);
  // print('searchWikipedia received arguments: $articleTitle');
  print(articleContent);
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle'
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    print('response Body:');
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}
