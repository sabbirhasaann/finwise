import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void removeAndNavigateToRoute(String route) {
    navigatorKey.currentState?.popAndPushNamed(route);
  }

  Future<dynamic> navigateToRoute(String route, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamed(route, arguments: arguments);
  }

  void navigateToPage(Widget page) {
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (BuildContext context) {
        return page;
      }),
    );
  }

  void goBack() {
    navigatorKey.currentState?.pop();
  }

  // A method to pop the current screen and return a result
  void goBackWithResult(bool result) {
    // Navigator.of(context).pop(true); alter to of
    // 2. Access the NavigatorState using the key and call pop()
    return navigatorKey.currentState!.pop(result);
  }

  void exitApp() {
    SystemNavigator.pop();
  }


}