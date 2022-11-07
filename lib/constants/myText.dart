import 'package:flutter/material.dart';

//project imports

class myText extends StatelessWidget{
  final String data;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const myText({super.key, required this.data, this.fontSize, this.fontWeight, this.color, this.textAlign});

  @override
  Widget build(BuildContext context) {

    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}



