
// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

// import 'dart:html';
// import 'dart:js';

import 'dart:html';

import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'type': 'java', 'value': 50},
    {'type': 'c++', 'value': 40},
    {'type': 'python', 'value': 60},
    {'type': 'dart', 'value': 70},
    {'type': 'go', 'value': 20},
     {'type': 'javascript', 'value': 20},
      {'type': 'c#', 'value': 60},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
