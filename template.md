1. Template

```dart
Scaffold(
      backgroundColor: Color(0xff00D09E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        

        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text('Welcome',
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
                  child: Column(
                    children: [
                      Text('Reset Password'),
                      const SizedBox(height: 10,),
                      Text(subtitle),
                      const SizedBox(height: 20,)

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  ```