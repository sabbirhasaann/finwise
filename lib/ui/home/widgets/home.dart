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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 36.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_upward,
                                size: 12,
                              ),
                              SizedBox(width: 2,),
                              Text(
                                'Total Balance',
                                style: TextStyle(
                                  fontSize: 12,
                                ),  
                              ),
                            ],
                          ),
                          const SizedBox(height: 2,),
                          Text(
                            '\$7,7783.00',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      VerticalDivider(
                        thickness: 1,
                        indent: 4,
                        endIndent: 4,
                        color: Colors.white,
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_downward,
                                size: 12,
                              ),
                              SizedBox(width: 2,),
                              Text(
                                'Total Expense',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2,),
                          Text(
                            '-\$1187,04',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF0068FF)
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ),

                SizedBox(
                  height: 12,
                ),

                Stack(
                  alignment: Alignment.center,
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
                      child: Text(
                        '30%',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      right: 0,

                      child: Container(
                        height: 27,
                        width: 261,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(13.5)),
                          border: Border.all(color: Colors.white, width: 0),
                        ),
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$20,000',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 13,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      size: 15,
                    ),
                    const SizedBox(width: 4,),
                    Text(
                      '30% of you expense, Looks good',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                )
              ],
            ),
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
                    padding: const EdgeInsets.only(left: 36.5, right: 36.5, top: 32),
                    child: Container(
                      height: 152,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF00D09E),
                        borderRadius: BorderRadius.all(Radius.circular(31))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: const CircularProgressIndicator(
                                        value: 0.5, // 70% progress
                                        strokeWidth: 3,
                                        backgroundColor: Color(0xFFDFF7E2),
                                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF0068FF)),
                                      ),
                                    ),
                                    
                                    ImageIcon(
                                        AssetImage('assets/images/car.png')
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Savings\non Goal',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 1.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                            
                          // VerticalDivider(
                          //   thickness: 2,
                          //   color: Color(0xFFFFFFFF),
                          //   indent: 12,
                          //   endIndent: 12,
                          // ),

                          Container(
                            height: 108,
                            width: 2.5,
                            color: Color(0xFFFFFFFF),
                          ),
                          
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/images/salary.png'),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Revenue Last Week',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 2,),
                                        Text(
                                          '\$4,000.00',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF052224)
                                          ),
                                        ),
                                      ],
                                  )
                                ],
                              ),

                              const SizedBox(height: 12,),

                              Container(
                                width: 161,
                                height: 2.5,
                                color: Color(0xFFFFFFFF),
                              ),
                          
                              const SizedBox(height: 12,),
                          
                          
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/images/food.png'),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Food Last Week',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 2,),
                                        Text(
                                          '-\$100.00',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff0068ff)
                                          ),

                                        ),
                                      ],
                                  )
                                ],
                              ),
                            ],
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