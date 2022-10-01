@JS()
// jsファイル名を記載
library js_func;

import 'package:js/js.dart';

// jsファイルから呼び出したい関数をCall
@JS('callJsFunc')
external String callJsFunc(String message);
