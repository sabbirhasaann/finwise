import 'package:flutter/material.dart';

class Components extends StatelessWidget{
  const Components({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: NestedContainer()
        // child: HomeCont(),
        // child: NestedCircle(),
        child: TabsRegular(),
      ),
    );
  }
}

class TabsRegular extends StatelessWidget{
  const TabsRegular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color(0xFF2022fF)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Daily'),
          const SizedBox(width: 10,),
          Text('Weekly'),
          const SizedBox(width: 10,),
          Text('Monthly'),
          const SizedBox(width: 10,),
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