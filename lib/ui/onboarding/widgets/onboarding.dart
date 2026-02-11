import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget{
  const Onboarding({super.key, this.onboardText, this.imageFile});
  final String ?onboardText;
  final String ?imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(onboardText ?? 'onboard text not available'),
          Column(
            children: [
              Text(imageFile ?? 'image path not defined'),
              Text('Here will be text..'),
              Text('Here will be navigation indicator..'),              
            ],
          )
        ],
      ),
    );
  }
}