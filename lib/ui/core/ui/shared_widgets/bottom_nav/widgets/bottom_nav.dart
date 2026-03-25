import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget{
  BottomNav({super.key});
  final List<BottomNavigationBarItem> navItem = [
    BottomNavigationBarItem(
      icon: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(22),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Color(0xFF00D09E),
            ),
            height: 53,
            width: 57,
            child: Icon(Icons.home_outlined),
        
          ),
      ),
      label: 'Home',
      backgroundColor: Color(0xFFDFF7E2),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.analytics_outlined),
      label: 'Analytics',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.compare_arrows_outlined),
      label: 'Transaction',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category_outlined),
      label: 'Category',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.man_outlined),
      label: 'Profiel',
    ),

  ];
  @override
  Widget build(BuildContext context){
    return Container(
      height: 100,
      // padding: EdgeInsets.only(top: 36, bottom: 41),
      decoration: BoxDecoration(
        // color: Color(0xFFDFF7E2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(70),
          topRight: Radius.circular(70)
        ),
      ),
      
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(70),
          topRight: Radius.circular(70)
        ),
        child: BottomNavigationBar(
        items: navItem,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color(0xFFDFF7E2),
        fixedColor: Color(0xFF052224),unselectedItemColor: const Color(0xFF052224),
        iconSize: 32,
        ),
      ),
    );
  }
}