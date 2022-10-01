import 'package:flutter/material.dart';
import 'js/js_func_call.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const argumentValue = "js関数の呼び出し";
    String returnValue = "";

    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text("js operation check"),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                // JavaScript関数を呼び出し、戻り値をコンソールに表示
                returnValue = callJsFunc(argumentValue);
                debugPrint(returnValue);
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.play_circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ));
  }
}
