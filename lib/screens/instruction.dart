import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Instruction extends StatelessWidget {
  String url = '';
  Instruction({this.url});
WebViewController _controller;
_loadHtmlFromAssets() async {
    _controller.loadUrl( Uri.dataFromString(
        url,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: '',
      onWebViewCreated: (WebViewController controller){
        _controller = controller;
        _loadHtmlFromAssets();
      },
    ),
    );
  }
}