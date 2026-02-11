import 'package:flutter/material.dart';
import '../../core/ui/shared_widgets/text_form_field/widgets/text_form_field.dart';
import '../../core/ui/shared_widgets/primary_button/widgets/primary_button.dart';
import '../../core/ui/shared_widgets/secondary_button/widgets/secondary_button.dart';
import '../../../data/services/navigation_service.dart';
class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff00D09E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        

        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text('Welcome',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              height: double.infinity,
              // margin: EdgeInsets.only(top: 150),
              
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 50, vertical: 80),
                  child: Form(
                    child: Column(
                      children: [
                        ExtendedTextFormField(
                          label: 'Username or email',
                          hint: 'example@example.com',
                        ),
                        SizedBox(height: 40,),
                        ExtendedTextFormField(
                          label: 'Password', 
                          hint: 'Enter password',
                          obscure: true,
                        ),
                        SizedBox(height: 50,),
                        PrimaryButton(
                          label: 'Log In',
                          onpressed: (){
                            
                          },
                        ),
                        SizedBox(height: 19,),
                        Text('Forgot Passowrd'),
                        SizedBox(height: 14,),
                        SecondaryButton(
                          label: 'Sign Up', 
                          onpressed: (){
                            NavigationService().navigateToRoute('signup/');
                          },
                        ),
                        SizedBox(height: 23,),
                          
                        Text('Use Fingerprint To Access'),
                        SizedBox(height: 28,),    
                        Text('or sign up with'),
                        SizedBox(height: 19,),    
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.facebook,
                            ),
                            Icon(
                              Icons.face,
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don\'t have an account?'),
                            Text('SignUp'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}