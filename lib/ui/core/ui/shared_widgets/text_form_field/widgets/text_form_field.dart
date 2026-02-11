import 'package:flutter/material.dart';


class ExtendedTextFormField extends StatefulWidget{
  const ExtendedTextFormField({super.key, this.obscure, required this.label, required this.hint});

  final bool ?obscure;
  final String label;
  final String hint;
  @override
  State<ExtendedTextFormField> createState() => _ExtendedTextFormFieldState();
}

class _ExtendedTextFormFieldState extends State<ExtendedTextFormField> {



  @override
  Widget build(BuildContext context){
    return TextFormField(
            decoration: InputDecoration(
              label: Text(widget.label),
              hintText: widget.hint,
              fillColor: Color(0xffDFF7E2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
            style: TextStyle(
              fontSize: 16,
              // height: 1,
              // color: Color(0xff093030),
              color: Color(0xff0E3E3E),
            ),
            textAlign: TextAlign.left,
            obscureText: widget.obscure ?? false,
    );
  }
}