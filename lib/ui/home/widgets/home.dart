import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: false,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.only(left: 36.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Welcome back',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),  
              ),
              const SizedBox(height: 2,),
              Text('Good Morning',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),  
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 36.5),
            child: IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.notifications),
            ),
          )
        ],
        
      ),
  
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
      
                Stack(
                  children: [
                    Container(
                      height: 27,
                      width: 330,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFF052224),
                        borderRadius: BorderRadius.all(Radius.circular(13.5))
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text('30%',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    Positioned(
                      right: -1,
                      child: Container(
                        height: 27,
                        width: 261,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(13.5))
                        ),
                        alignment: Alignment.centerRight,
                        child: Text('\$20,000',
                          style: TextStyle(
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    )
                  ],
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
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 33.0, left: 36.5, right: 36.5),
                    child: Container(
                      height: 151,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF00D09E),
                        borderRadius: BorderRadius.all(Radius.circular(31))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.car_crash),
                                SizedBox(height: 2,),
                                Text('Savings on Goal'),
                              ],
                            ),
                          ),
                            
                          VerticalDivider(
                            thickness: 2,
                            color: Color(0xFFFFFFFF),
                            indent: 12,
                            endIndent: 12,
                          ),
                            
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.money),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Revenue Last Week'),
                                              SizedBox(height: 2,),
                                              Text('\$4,000.00'),
                                            ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                
                                Divider(
                                  thickness: 2,
                                  color: Color(0xFFFFFFFF),
                                  indent: 5,
                                  endIndent: 10,
                                ),
                            
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.money),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Food Last Week'),
                                              SizedBox(height: 2,),
                                              Text('-\$4,000.00'),
                                            ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 26,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36.5),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(22),
                        ),
                        color: Color(0xFFDFF7E2)
                      ),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 95,
                            height: 31,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(19)
                              ),
                              // color: Color(0xFF00D09E),
                            ),
                            alignment: Alignment.center,
                            child: 
                              Text(
                                'Daily',
                                style: TextStyle(
                                  color: Color(0xFF052224),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                                ),
                                textAlign: TextAlign.center,
                                
                            )
                          ),
                          const SizedBox(width: 10,),
                          Container(
                            width: 95,
                            height: 31,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(19)
                              ),
                              // color: Color(0xFF00D09E),
                            ),
                            alignment: Alignment.center,
                            child: 
                              Text(
                                'Weekly',
                                style: TextStyle(
                                  color: Color(0xFF052224),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                                ),
                                textAlign: TextAlign.center,
                                
                            )
                          ),
                          const SizedBox(width: 10,),
                          Container(
                            width: 95,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(19)
                              ),
                              color: Color(0xFF00D09E),
                            ),
                            alignment: Alignment.center,
                            child: 
                              Text(
                                'Monthly',
                                style: TextStyle(
                                  color: Color(0xFF052224),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                                ),
                                textAlign: TextAlign.center,
                                
                            )
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36.5, vertical: 5),
                    child: SizedBox(
                      height: 57,
                      child: Row(
                        children: [
                          Container(
                            width: 57,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(22),
                              ),
                              color: Color(0xFF6DB6FE)
                            ),
                            child: Icon(
                              Icons.stacked_bar_chart,
                              color: Colors.white,
                            
                            )
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Salary',
                                  style: TextStyle(
                                  color: Color(0xFF052224),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                            
                                  ),
                                ),
                                Text(
                                  '18:17 - April 30',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0068FF)
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            width: 35.49,
                            color: Color(0xFF00D095),
                            thickness: 1.01,
                          ),
                          // const SizedBox(width: 10,),
                    
                          Expanded(
                            child: Text(
                              'Monthly',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                // height: 15,
                                color: Color(0xFF052224),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          
                          VerticalDivider(
                            width: 35.49,
                            color: Color(0xFF00D095),
                            thickness: 1.01,
                          ),
                          // const SizedBox(width: 10,),
                          Expanded(
                            child: Text(
                              '\$4,000.00',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                // height: 15,
                                color: Color(0xFF052224),
                              ),
                              textAlign: TextAlign.right,
                            ),
                    
                          ),
                    
                        ],
                      ),
                    
                    ),
                  ),

                  const SizedBox(height: 24,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36.5, vertical: 5),
                    child: SizedBox(
                      height: 57,
                      child: Row(
                        children: [
                          Container(
                            width: 57,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(22),
                              ),
                              color: Color(0xFF6DB6FE)
                            ),
                            child: Icon(
                              Icons.stacked_bar_chart,
                              color: Colors.white,
                            
                            )
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Groceries',
                                  style: TextStyle(
                                  color: Color(0xFF052224),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                            
                                  ),
                                ),
                                Text(
                                  '17:00 - April 24',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0068FF)
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            width: 35.49,
                            color: Color(0xFF00D095),
                            thickness: 1.01,
                          ),
                          // const SizedBox(width: 10,),
                    
                          Expanded(
                            child: Text(
                              'Pantry',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                // height: 15,
                                color: Color(0xFF052224),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          
                          VerticalDivider(
                            width: 35.49,
                            color: Color(0xFF00D095),
                            thickness: 1.01,
                          ),
                          // const SizedBox(width: 10,),
                          Expanded(
                            child: Text(
                              '-\$100,00',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                // height: 15,
                                color: Color(0xFF0068FF),
                              ),
                              textAlign: TextAlign.right,
                            ),
                    
                          ),
                    
                        ],
                      ),
                    
                    ),
                  ),

                  const SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36.5, vertical: 5),
                    child: SizedBox(
                      height: 57,
                      child: Row(
                        children: [
                          Container(
                            width: 57,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(22),
                              ),
                              color: Color(0xFF6DB6FE)
                            ),
                            child: Icon(
                              Icons.stacked_bar_chart,
                              color: Colors.white,
                            
                            )
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Rent',
                                  style: TextStyle(
                                  color: Color(0xFF052224),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                            
                                  ),
                                ),
                                Text(
                                  '08:30 - April 25',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0068FF)
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            width: 35.49,
                            color: Color(0xFF00D095),
                            thickness: 1.01,
                          ),
                          // const SizedBox(width: 10,),
                    
                          Expanded(
                            child: Text(
                              'Rent',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                // height: 15,
                                color: Color(0xFF052224),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          
                          VerticalDivider(
                            width: 35.49,
                            color: Color(0xFF00D095),
                            thickness: 1.01,
                          ),
                          // const SizedBox(width: 10,),
                          Expanded(
                            child: Text(
                              '-\$674,40',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                // height: 15,
                                color: Color(0xFF0068FF),
                              ),
                              textAlign: TextAlign.right,
                            ),
                    
                          ),
                    
                        ],
                      ),
                    
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );  
  }
}