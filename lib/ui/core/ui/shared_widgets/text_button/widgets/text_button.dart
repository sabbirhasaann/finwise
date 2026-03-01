import 'package:flutter/material.dart';

class TextButtonModified extends StatelessWidget{

  const TextButtonModified({super.key, this.label, this.fontsize, required this.onpressed});
  final String ?label;
  final double ?fontsize;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: onpressed,
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