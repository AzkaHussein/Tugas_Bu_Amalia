import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.all(100),
            child:  
              Text("Halo Azka", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),), 
            
              
          ),
        ),

      ),
    );
  }
}


