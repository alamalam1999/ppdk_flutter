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
                        padding: const EdgeInsets.only(
                          left: 40,bottom: 30
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios, size: 20),
                            SizedBox(width: 5),
                            Text("Login", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
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
                          padding: const EdgeInsets.only(
                            bottom: 10, top: 10,left: 40
                          ),
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
                          padding: const EdgeInsets.only(
                          bottom: 30,left: 40),
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
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 6,
                              left: 170
                            ),
                            child: Row(
                              children: [
                                Text("Forgot Password ?",style: 
                                TextStyle(color: Color(0xFFEA9459),fontWeight: FontWeight.bold),)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                    // children: [
                      
                     
                    // ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color(0xFF283FB1),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                      left: 40
                    ),
                    child: Row(
                      children: [
                        Text("Don't have account? "),
                        Text("Sign up", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFEA9459)
                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 23
                    ),
                    child: Column(
                      children: [
                        Text("Or Sign in with")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 23
                    ),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 140, 
                                decoration: BoxDecoration(
                                  color: Color(0xFFFAFAFA),
                                  borderRadius: BorderRadius.circular(23),
                                  image: DecorationImage(
                                    image: AssetImage("images/Google.png"),
                                  )
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 23,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  color: Color(0xFFFAFAFA),
                                  image: DecorationImage(
                                    image: AssetImage("images/Facebook.png"),
                                  )
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left:40,
                      top: 30
                    ),
                    child: Row(
                      children: [
                        Text("Dont have an Account? "),
                        Text("Join Us",style: TextStyle(
                          color: Color(0xFFEA9459)
                          ,fontWeight: FontWeight.bold
                        ),)
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