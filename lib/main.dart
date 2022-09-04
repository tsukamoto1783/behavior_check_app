import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  // .envファイルの読み込み
  await dotenv.load(fileName: "env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("flutter_dotenv sample app"),
        ),
        body: Center(
          // .envに設定した環境変数の呼び出し
          child: Text("【TEST_KEY】：${dotenv.env['TEST_KEY']}"),
        ),
      ),
    );
  }
}
