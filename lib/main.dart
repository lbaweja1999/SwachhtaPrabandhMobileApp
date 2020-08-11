import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(WebViewExample());

class WebViewExample extends StatefulWidget {
  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();
  var urlString = "https://swachhtaprabandh.herokuapp.com/";

  @override
  void initState() {
    super.initState();
    flutterWebviewPlugin.canGoBack();
    flutterWebviewPlugin.cleanCookies();
    flutterWebviewPlugin.clearCache();
    flutterWebviewPlugin.close();
    flutterWebviewPlugin.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 30),
          child: new WebviewScaffold(
            url: urlString,
            withZoom: false,
            appCacheEnabled: false,
            clearCookies: true,
            clearCache: true,
          ),
        ),
      ),
    );
  }
}
