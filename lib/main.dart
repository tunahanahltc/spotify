import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/pages/bottom_navigation.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Spotify",
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home:BottomNavigation(),
    );
  }
}