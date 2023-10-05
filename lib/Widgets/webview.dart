// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class WebView extends StatelessWidget {
  const WebView({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white54,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.orangeAccent,
        ),
        title:const Text(
          "Details",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: WebViewPlus(
        initialUrl: url,
      ),
    );
  }
}
