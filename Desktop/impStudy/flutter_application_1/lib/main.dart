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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 46, 98),
        title: Text("Myapp"),
       ),
       body:Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("This is a demo",style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),),
            GestureDetector(
              onTap: () {
                setState((){
                  isPressed = !isPressed;
                });
              },
              child: Container(
                width: 250,
                height: 80,
                color: isPressed?Colors.amber:Colors.blue,
                alignment: Alignment.center,
                child: Text(isPressed?"pressed":"press me"),
              ),
            ),
            // CircleAvatar(
            //   radius: 40,
            //   backgroundImage: AssetImage('images/sun.jpg'),
            // )
            // Image(image:AssetImage('images/sun.jpg') )

          ],
         ),
       )
    );
  }
}


