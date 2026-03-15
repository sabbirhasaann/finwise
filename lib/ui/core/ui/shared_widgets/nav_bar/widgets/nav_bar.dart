import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget{
  BottomNav({super.key});

  final List<Widget> destinations = [
    Icon(Icons.home),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(destinations: destinations);
  }
}