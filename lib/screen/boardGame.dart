import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';



class boardGame extends StatefulWidget {
  @override
  _boardGame createState() => _boardGame();
}

class _boardGame extends State<boardGame> {
  @override
  Widget build(BuildContext context) {
    return  WebviewScaffold(
      url: "https://boardcafe.net/games/aaa",
    );

  }
}
