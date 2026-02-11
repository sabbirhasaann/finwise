import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget{
  const SecondaryButton({super.key, required this.label, required this.onpressed});
  final String label;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: (){
        onpressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFDFF7E2),
        fixedSize: Size(207, 45),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color(0xFF0E3E3E),
        ),
      ),
    );
  }
}