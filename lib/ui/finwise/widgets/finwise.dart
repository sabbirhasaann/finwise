import 'package:flutter/material.dart';
import '../../../../data/services/navigation_service.dart';

class FinWise extends StatelessWidget{
  const FinWise({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('FinWise',
          style: TextStyle(
            letterSpacing: 5,
            fontWeight: FontWeight.w500,
          ),
        ),

        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(
                value: 1,
                child: Text('Exit FinWise'),
              ),
            ];
          },
          onSelected: (value) async {
            if (value == 1) {
                  bool? confirmExit = await showDialog<bool>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Exit FinWise'),
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
                    NavigationService().goBack();
                  }
                }
              },
            ),
        ],
      ),
      body: Center(
        child: Text('FinWise'),
      )
    );
  }
}