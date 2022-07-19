import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  @override
  final String text;
  const CustomText({required this.text}) ;
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(fontSize: 18, height: 2),);


  }
}


