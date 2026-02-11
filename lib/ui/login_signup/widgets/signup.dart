import 'package:flutter/material.dart';
import '../../core/ui/shared_widgets/text_form_field/widgets/text_form_field.dart';
import '../../core/ui/shared_widgets/primary_button/widgets/primary_button.dart';



class Signup extends StatelessWidget{
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Color(0xff00D09E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              )
            )
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
            
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ExtendedTextFormField(label: 'Full name', hint: 'example@example.com'),
                      ExtendedTextFormField(label: 'Email', hint: 'example@example.com'),
                      ExtendedTextFormField(label: 'Mobile number', hint: '+880 1*******'),
                      ExtendedTextFormField(label: 'Date of birth', hint: 'DD/MM/YYYY'),
                      ExtendedTextFormField(label: 'Password', hint: '******', obscure: true,),
                      ExtendedTextFormField(label: 'Confirm Password', hint: '*******', obscure: true,),
                        
                      Text('By continuing, you agree to'),
                      Text('Terms of Use and Privacy Policy'),
                        
                      PrimaryButton(
                        label: 'Sign Up',
                        onpressed: (){
                          
                        },
                      ),
                        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          Text('Login'),
                        ],
                      )
                        
                    ],
                  )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}