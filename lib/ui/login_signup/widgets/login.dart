import 'package:flutter/material.dart';
import '../../core/ui/shared_widgets/text_form_field/widgets/text_form_field.dart';
import '../../core/ui/shared_widgets/primary_button/widgets/primary_button.dart';
import '../../core/ui/shared_widgets/secondary_button/widgets/secondary_button.dart';

class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Text('Welcome'),
          Form(
            child: Column(
              children: [
                ExtendedTextFormField(
                  label: 'Username or email',
                  hint: 'example@example.com',
                ),
                ExtendedTextFormField(
                  label: 'Password', 
                  hint: 'Enter password',
                  obscure: true,
                ),

                PrimaryButton(
                  label: 'Log In',
                ),
                
                Text('Forgot Passowrd'),

                SecondaryButton(label: 'Sign Up'),

                Text('Use Fingerprint To Access'),

                Text('or sign up with'),

                Row(
                  children: [
                    Icon(
                      Icons.facebook,
                    ),
                    Icon(
                      Icons.face,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('Don\'t have an account?'),
                    Text('SignUp'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}