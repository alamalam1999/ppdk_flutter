import 'package:flutter/material.dart';

class MyWidgetPageLogin extends StatelessWidget {
  const MyWidgetPageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios, size: 20),
                            SizedBox(width: 5),
                            Text("LOGIN", style: TextStyle(
                            fontSize: 20
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Text("Welcome Back", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Text("Sign in to your Account", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                              ),),
                            ],
                          ),
                        ),
                      ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 200,
                            ),
                            child: Row(
                              children: [
                                Text("Email Address")
                              ],
                            ),
                          ),
                          Row(
                            children: [
                            Container(
                              height: 50,
                              width: 300,
                              color: Colors.white,
                              child:  TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                labelText: 'Password',
                              ),
                              ),
                            ),
                            ],
                          ),
                        ],
                      )
                    ],
                    // children: [
                      
                     
                    // ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 25,
                              right: 230
                            ),
                            child: Row(
                              children: [
                                Text("Password")
                              ],
                            ),
                          ),
                          Row(
                            children: [
                            Container(
                              height: 50,
                              width: 300,
                              color: Colors.white,
                              child:  TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                labelText: 'Password',
                              ),
                              ),
                            ),
                            ],
                          ),
                        ],
                      )
                    ],
                    // children: [
                      
                     
                    // ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(23) 
                          ),
                          child: Center(child: Text("Login", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white
                          ),)),
                          
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          
        ],
      ),
    );
  }
}