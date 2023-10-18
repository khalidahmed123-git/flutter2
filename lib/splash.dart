import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studi/note.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3)  , () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Note()));


    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        
        children: [

          Expanded(child: Image(image: AssetImage("images/1691092864420.jpg"))),
         
        ],
      ),
    );
  }
}
