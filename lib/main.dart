import 'package:flutter/material.dart';
import 'package:untitled/home/home_screen.dart';
import 'package:untitled/my_theme.dart';
import 'package:untitled/sura_details/sura_details_screen.dart';
class car{
  @override
  String toString() {
    return super.toString();
  }
}
void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
return MaterialApp(
  theme:MyTheme.lighttheme,
routes: {
  HomeScreen.routename:(_)=>HomeScreen(),
  SuraDetailsScreen.routename:(_)=>SuraDetailsScreen(),
},
  initialRoute:HomeScreen.routename ,
);
  }
  }