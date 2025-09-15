import 'package:flutter/material.dart';

class authpage extends StatelessWidget {
  const authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/mountain.jpg',),
              fit: BoxFit.cover,
              
            
            )
          ),
          child: Container(
            decoration:BoxDecoration(
              gradient: LinearGradient(
                colors: 
                [
                   Colors.red.shade900.withValues(alpha: 0.8),
                   Colors.blueGrey.shade900.withValues(alpha: 0.8),
                   Colors.white.withValues(alpha: 0.2),
                ]
              ,begin: Alignment.topCenter,
               end: Alignment.bottomCenter
              )
            ),
            child: SingleChildScrollView(
              child: Column(
                children: 
                [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
                  ),

                  Text("T",style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height*0.1,
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        color: Colors.deepOrange,
                        offset: Offset(8, 8),
                        blurRadius: 10.0,
                      )
                    ]
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFormField(
                      style:TextStyle(
                        color: Colors.white,
                      ) ,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                       icon: Icon(Icons.email_outlined),
                       iconColor: Colors.white,
                       filled: true,
                       fillColor: Colors.blueGrey.withValues(alpha: 0.5),
                       border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide.none
                       ) 
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.04,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFormField(
                      obscureText: true,
                      style:TextStyle(
                        color: Colors.white,
                      ) ,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                       icon: Icon(Icons.lock_clock_outlined),
                       iconColor: Colors.white,
                       filled: true,
                       fillColor: Colors.blueGrey.withValues(alpha: 0.5),
                       border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide.none
                       ) 
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.04,
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width*0.02
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade400,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                         
                         BoxShadow(
                           color: Colors.black54,
                           offset: Offset(3, 3),
                           blurRadius: 3,
                         )
                       ]
                        
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height*0.02,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w300
                          ),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}