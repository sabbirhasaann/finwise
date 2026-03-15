import 'package:finwise/ui/core/ui/shared_widgets/primary_button/widgets/primary_button.dart';
import 'package:finwise/ui/core/ui/shared_widgets/secondary_button/widgets/secondary_button.dart';
import 'package:finwise/ui/core/ui/shared_widgets/text_button/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import '../../core/ui/shared_widgets/text_form_field/widgets/text_form_field.dart';

class SecurityPin extends StatelessWidget{
    const SecurityPin({super.key});

    @override
  Widget build(BuildContext context) {
    String subtitle = loremIpsum(paragraphs: 1, words: 5);
    return Scaffold(
      backgroundColor: Color(0xff00D09E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        

        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text('Security Pin',
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
              width: double.infinity,

              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 50, vertical: 80),
                  child: Form(
                    child: Column(
                      children: [
                        Text('Enter Security Pin'),
                        const SizedBox(height: 82,),
                        ExtendedTextFormField(
                          label: 'Email', 
                          hint: 'example@example.com'
                        ),
                        const SizedBox(height: 59,),
                        PrimaryButton(
                          label: 'Next Step', 
                          onpressed: (){}
                        ),
                        const SizedBox(height: 10,),
                        SecondaryButton(label: 'Sign Up', onpressed: (){}),
                        const SizedBox(height: 100,),
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
                            TextButtonModified(label: 'SignUp', onpressed: (){},),
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