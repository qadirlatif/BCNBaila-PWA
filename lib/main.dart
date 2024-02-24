import 'package:bcnbaila_pwa/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp( const MaterialApp(
    home: SplashScreen(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: WebView(
          initialUrl: 'https://BCNBaila.app',
          javascriptMode: JavascriptMode.unrestricted,
        )));
  }
}
