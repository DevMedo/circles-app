import 'package:flutter/material.dart';


class card extends StatefulWidget {
  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(32.0),
                topRight: const Radius.circular(32.0),
                bottomRight: const Radius.circular(32.0),
                bottomLeft: const Radius.circular(32.0),
              ),
            ),


          ),
        ],
      ),
    );
  }
}
