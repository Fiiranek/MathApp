import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Answer extends StatelessWidget {
String url = '';
Answer({this.url});
bool isLoading=true;
WebViewController _controller;
_loadHtmlFromAssets() async {
    _controller.loadUrl( Uri.dataFromString(
        url,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString());
  }
_stopLoading() {
  isLoading = false;
  print('koniec');
}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
              children: <Widget>[SpinKitWave(color: Colors.green,), WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://wikipedia.com',
        onWebViewCreated: (WebViewController controller){
          _controller = controller;
          _loadHtmlFromAssets();
        },
        onPageFinished: _stopLoading(),
    ),]
      ),
    );
  }
}