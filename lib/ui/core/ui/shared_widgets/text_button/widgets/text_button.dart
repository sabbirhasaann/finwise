import 'package:flutter/material.dart';

class TextButtonModified extends StatelessWidget{

  const TextButtonModified({super.key, this.label, this.fontsize});
  final String ?label;
  final double ?fontsize;
  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: (){},
      child: Text(label ?? 'Not set',
      style: TextStyle(
          fontSize: fontsize ?? 10,
          fontWeight: FontWeight.w700,
          color: Color(0xFF093030),
        ),
      ),
    );
  }
}