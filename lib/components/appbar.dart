import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget{
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    //screen size
    final screen = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        color: Colors.red,
        height: screen.height*0.2,
      ),
    );
  }

}