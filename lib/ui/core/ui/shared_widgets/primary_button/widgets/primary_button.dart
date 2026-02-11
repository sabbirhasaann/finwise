import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget{
  const PrimaryButton({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: (){},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF00D09E),
        fixedSize: Size(207, 45),
      ),
      child: Text(label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color(0xFF093030),
        ),
      ),

    );
  }
}