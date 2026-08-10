import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/ui.dart';

class Splashpage extends StatefulWidget{
  const Splashpage({super.key});
  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context)=>MyHomePage(title: 'home page')));
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Colors.cyan,
        child: Center(child: Text('my app',style: mtextfunc(),)
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
               Color(0xffa18cd1),
               Color(0xff8fd3f4)
            ])
        )
      ),
    );
  }
}