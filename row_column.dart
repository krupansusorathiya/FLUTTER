
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main()=>runApp(
  MyApp()
);
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.stretch,
              
              children: [
                Container(
                  width: 50,
                  height: 100,
                  color:Colors.amber,
                  
                ),Container(
                  width: 50,
                  height: 100,
                  color:Colors.black,
                  
                ),Container(
                  width: 50,
                  height: 100,
                  color:Colors.pink,
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//which keyword use to in column in stech 