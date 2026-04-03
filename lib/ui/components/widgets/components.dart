import 'package:flutter/material.dart';

class Components extends StatelessWidget{
  const Components({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FinwiseAppBar(),
      body: Center(
        child: AccountBalanceScreenComponent1(),
        // child: NotifScComp(),
        // child: NestedContainer()
        // child: HomeCont(),
        // child: NestedCircle(),
        // child: TabsRegular(),
        // child: Tile(),
        // child: HomeTop(),
      ),
    );
  }
}

class AccountBalanceScreenComponent1 extends StatelessWidget{
  const AccountBalanceScreenComponent1({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      height: 101,
      width: 171,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.89),
      ),
      child: Column(
        children: [
          Icon(
            Icons.arrow_downward,
            color: Color(0xFF0068FF),
            // color: Color(0xFF00D09E),
          ),
          const SizedBox(height: 5,),
          Text(
            'Expense',
            style: TextStyle(
              color: Color(0xFF093030),
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            '4,000.00',
            style: TextStyle(
              color: Color(0xFF093030),
              // color:Color(0xFF0068FF),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600
            ),
          ),
          
        ],
      ),
    );
  }
}


class NotifScComp extends StatelessWidget{
  const NotifScComp({super.key});

  @override
  Widget build(BuildContext contex){
    bool _isTransaction = true;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.5),
      child: Container(
        height: 130,
        // decoration: BoxDecoration(
        //   border: Border(
        //     bottom: BorderSide(
        //       color: Color(0xFF223355),
        //       style: BorderStyle.solid,
        //       width: 1.5,
        //     )
        //   )
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Color(0xFF00D09E),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Icon(
                        Icons.notification_add_sharp,
                        color: Color(0xff093030),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 13,),
                Expanded(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _isTransaction == true
                      ? Text(
                        'Transaction!',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold
                        ),
                      ) 
                      : Text(
                        'Remainder!',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                  
                      const SizedBox(height: 3,),
                      
                      Text(
                        'Set up you automatic  sdf asfda sdfa savings to meet you savings goal',
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.5,
                        ),
                        // softWrap: true,
                        // maxLines: 2,
                      ),
                  
                      if(_isTransaction == true)
                        Text(
                          'Groceries | Pantry | -\$100.00',
                          style: TextStyle(
                            color: Color(0xFF0068FF),
                          )
                        )                     
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 13,),
            Row(
              children: [
                Spacer(),
                Text(
                  '17:00 April 24',
                  style: TextStyle(
                    color: Color(0xFF0068FF)
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF00D09E),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeTop extends StatelessWidget{
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      // color: Colors.white,
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
                      fontWeight: FontWeight.w600
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
    );
  }
}

class FinwiseAppBar extends StatelessWidget implements PreferredSizeWidget{
  const FinwiseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: false,
        // toolbarHeight: 80,
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
        
      );
  }
  // This is the magic part that makes it a "PreferredWidget"
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); 
  // kToolbarHeight is the standard 56.0. 
  // If your column feels cramped, use: const Size.fromHeight(70.0);
}

class Tile extends StatelessWidget{
  const Tile({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
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
    );
  }
}

class TabsRegular extends StatelessWidget{
  const TabsRegular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(22),
        ),
        color: Color(0xFFDFF7E2)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}


class NestedCircle extends StatelessWidget{
  const NestedCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(
              // color: Color(0xFF02FF23),
              width: 2,
            )
          ),
        ),

        SizedBox(
          width: 50,  // Half the width of the base circle
          height: 50, // Half the height of the base circle
          child: ClipRect(
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 0.5,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF00D09E), // Darker Green
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HomeCont extends StatelessWidget{
  const HomeCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.5),
      child: Container(
        height: 152,
        width: 357,
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
    );
  }
}



class NestedContainer extends StatelessWidget{ //for home
  const NestedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}