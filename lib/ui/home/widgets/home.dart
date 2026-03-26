import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex:  1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.check),
                                    SizedBox(width: 2,),
                                    Text('Total Balance'),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text('\$7,7783.00'),
                            ],
                          ),
                        ),
                    
                    
                        // --- THE VERTICAL BAR ---
                        const VerticalDivider(
                          color: Colors.grey,  // Color of the line
                          thickness: 1,        // Width of the line
                          width: 20,           // Total space the divider takes up (padding)
                          indent: 10,          // Empty space at the top
                          endIndent: 10,       // Empty space at the bottom
                        ),
                    
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.check),
                                    SizedBox(width: 2,),
                                    Text('Total Balance'),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text('\$7,7783.00'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
      
                SizedBox(
                  height: 10,
                ),
      
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('30%'),
                      SizedBox(width: 4,),
                      // const Spacer(),
                      Text('\$20,000.0'),
                    ],
                  ),
                ),
      
                SizedBox(
                  height: 1,
                ),
      
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check),
                      Text('30% of you expense, Looks good'),
                    ],
                  ),
                )
              ],
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
            ),
          )
        ],
      ),
    );  
  }
}