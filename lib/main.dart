import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:ui'as ui;
void main() {

  runApp( new MediaQuery(
      data: new MediaQueryData.fromWindow(ui.window),
      child: new Directionality(textDirection: TextDirection.rtl,child: MyApp()))


  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://grekiska.se'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: WebViewWidget(controller: controller),
    );
  }
}