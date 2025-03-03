import 'package:first_project/container.dart';
import 'package:first_project/listView.dart';
import 'package:flutter/material.dart';
import 'package:first_project/BottomNavigator.dart';

class MyWidgetPageLogin extends StatefulWidget {
  const MyWidgetPageLogin({super.key});

  @override
  _MyWidgetPageLoginState createState() => _MyWidgetPageLoginState();
}

class _MyWidgetPageLoginState extends State<MyWidgetPageLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  bool _isObsecure = false;
  bool _isActive = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
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
                        padding: const EdgeInsets.only(left: 40, bottom: 30),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios, size: 20),
                            SizedBox(width: 5),
                            Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                          top: 10,
                          left: 40,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Welcome Back",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30, left: 40),
                        child: Row(
                          children: [
                            Text(
                              "Sign in to your Account",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  inputForm(
                    labelForm: "Username",
                    hintText: "Enter Username",
                    isPassword: false,
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email belum di isi";
                      }
                      return null;
                    },
                  ),
                  inputForm(
                    labelForm: "Password",
                    hintText: "Enter Password",
                    isPassword: true,
                    controller: _phoneController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password belum di isi";
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6, left: 220),
                    child: Row(
                      children: [
                        Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            color: Color(0xFFEA9459),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap:
                        _isActive
                            ? () {
                              // if (!_formKey.currentState!.validate())
                              //   print(_emailController.text);
                              // print(_passwordController.text);
                              // print(_phoneController.text);
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(content: Text("Silahkan isi dulu")),
                              // );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          const BottomNavigationBarExampleApp(),
                                ),
                              );
                              // if (_emailController.text.length < 5) {
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     SnackBar(content: Text("Silahkan isi dulu")),
                              //   );
                              // }
                            }
                            : null,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color:
                                  _isActive
                                      ? Color(0xFF283FB1)
                                      : Color(0xFF283FB1).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(23),
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 40),
                    child: Row(
                      children: [
                        Text("Don't have account? "),
                        Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFEA9459),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 23),
                    child: Column(children: [Text("Or Sign in with")]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 23),
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
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 23),
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
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 30),
                    child: Row(
                      children: [
                        Text("Dont have an Account? "),
                        Text(
                          "Join Us",
                          style: TextStyle(
                            color: Color(0xFFEA9459),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row inputForm({
    String? labelForm,
    String? hintText,
    bool isPassword = false,
    required TextEditingController controller,
    String? Function(String?)? validator,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 230),
              child: Row(children: [Text(labelForm ?? '')]),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.white,
                  child: TextFormField(
                    controller: controller,
                    validator: validator,
                    obscureText: isPassword ? _isObsecure : false,
                    decoration: InputDecoration(
                      hintText: hintText,
                      suffixIcon:
                          isPassword
                              ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObsecure = !_isObsecure;
                                  });
                                },
                                icon: Icon(
                                  _isObsecure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey,
                                ),
                              )
                              : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
