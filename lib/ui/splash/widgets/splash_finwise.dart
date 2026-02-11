import 'package:flutter/material.dart';
import '../../../../data/services/navigation_service.dart';

class SplashFinwise extends StatefulWidget{
  const SplashFinwise({super.key});

  @override
  State<SplashFinwise> createState() => _SplashFinwiseState();
}

class _SplashFinwiseState extends State<SplashFinwise> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), (){
      NavigationService().removeAndNavigateToRoute('login_signup_finwise/');
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF00D09E),
      // backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset('assets/images/vector.png'),
            ),
            SizedBox(height: 10),
            Text('FinWise',
              style: TextStyle(
                fontSize: 52,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}