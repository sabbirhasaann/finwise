import 'package:flutter/material.dart';

class Components extends StatelessWidget{
  const Components({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FinwiseAppBar(),
      body: Center(
        // child: NestedContainer()
        // child: HomeCont(),
        // child: NestedCircle(),
        // child: TabsRegular(),
        // child: Tile(),
        child: HomeTop(),
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
    return Container(
      height: 151,
      width: 357,
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