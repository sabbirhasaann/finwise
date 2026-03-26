import 'package:flutter/material.dart';
import 'data/services/navigation_service.dart';
import 'ui/splash/widgets/splash_finwise.dart';
import 'ui/login_signup/widgets/login_signup_finwise.dart';
import 'ui/login_signup/widgets/login.dart';
import 'ui/login_signup/widgets/signup.dart';
import 'ui/forgot_password/widgets/forgot_password.dart';
import 'ui/security_pin/widgets/security_pin.dart';
import 'ui/bottom_navs/widgets/bottom_navs.dart';
import 'ui/home/widgets/home.dart';
import 'ui/components/widgets/components.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Color(0xFF00D09E),
          primary: Color(0xFF00D09E),
          
        ),
        
      ),
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: '/',
      routes: {
        '/': (ctx) {
          return const SplashFinwise();
        },
        'login_signup_finwise/': (ctx){
          return LoginSignupFinwise();
        },
        'login/': (ctx){
          return Login();
        },
        'signup/': (ctx){
          return Signup();
        },
        'forgot_password/':(ctx){
          return ForgotPassword();
        },
        'security_pin/':(ctx){
          return SecurityPin();
        },
        'bottom_navs/': (ctx){
          return BottomNavs();
        },
        'home/': (ctx){
          return Home();
        },
        'components/': (ctx){
          return Components();
        },
      }
    );
  }
}

