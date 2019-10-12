import 'package:circle/screen/replays.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'replay.dart';
import 'screen/homeScreen.dart';


main() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool( 'seen' );
  Widget _screen;
  if( seen == null || seen == false ){
    _screen = replays();
  }else{
    _screen = replays();
  }
  runApp( circle( _screen ) );
}

class circle extends StatelessWidget {
  final Widget _screen;
  circle(this._screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gotham'),
      home: this._screen,
    );
  }
}