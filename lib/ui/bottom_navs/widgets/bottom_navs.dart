import 'package:flutter/material.dart';
import '../../core/ui/shared_widgets/bottom_nav/widgets/bottom_nav.dart';


class BottomNavs extends StatelessWidget {
  const BottomNavs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello'),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}