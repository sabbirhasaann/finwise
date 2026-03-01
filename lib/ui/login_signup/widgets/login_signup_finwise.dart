import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import '../../core/ui/shared_widgets/primary_button/widgets/primary_button.dart';
import '../../core/ui/shared_widgets/secondary_button/widgets/secondary_button.dart';
import '../../core/ui/shared_widgets/text_button/widgets/text_button.dart';

import '../../../../data/services/navigation_service.dart';

class LoginSignupFinwise extends StatelessWidget{
  const LoginSignupFinwise({super.key});

  @override
  Widget build(BuildContext context) {

    String text = loremIpsum(paragraphs: 1, words: 10);
    // String text  = "HEllo";

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset('assets/images/vector_v2.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text('FinWise',
              style: TextStyle(
                fontSize: 52,
                color: Color(0xFF00D09E),
                fontWeight: FontWeight.w600,
              ),
            ),
              SizedBox(height: 10,),

              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  height: 1.5,
                  color: Color(0xFF031314)
                ),
              ),
              SizedBox(height: 10),
              PrimaryButton(
                label: 'Log In',
                onpressed: (){
                    NavigationService().navigateToRoute('login/');
                  },
              ),

              SizedBox(
                height: 10,
              ),
              SecondaryButton(
                label: 'SignUp',
                onpressed: (){
                  NavigationService().navigateToRoute('signup/');
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextButtonModified(
                label: 'Forgot Password?',
                fontsize: 14,
                onpressed: (){
                  NavigationService().navigateToRoute('forgot_password/');
                },
                ),
              // Text('Forgot Password?',
              //   style: TextStyle(
              //     fontSize: 14,
              //     fontWeight: FontWeight.w700,
              //     color: Color(0xFF093030),
              //   ),
              // ),
              SizedBox(height: 10),
              IconButton(
                onPressed: () async {
                  bool? confirmExit = await showDialog<bool>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Exit'),
                        content: const Text('Are you sure you want to exit?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              NavigationService().goBack();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              NavigationService().goBackWithResult(true);
                            },
                            child: const Text('Exit'),
                          ),
                        ],
                      );
                    },
                  );
                  if (confirmExit == true) {
                    NavigationService().exitApp();
                  }
                },
                icon: Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
    );
  }
}