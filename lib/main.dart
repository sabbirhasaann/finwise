import 'package:flutter/material.dart';
import 'data/services/navigation_service.dart';
import 'ui/splash/widgets/splash_finwise.dart';
import 'ui/login_signup/widgets/login_signup_finwise.dart';

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
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: '/',
      routes: {
        '/': (ctx) {
          return const SplashFinwise();
        },
        'login_signup_finwise/': (ctx){
          return LoginSignupFinwise();
        }

      }
    );
  }
}

