import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../components/login_components.dart';
import '../data/global.dart';
import 'categories.dart';

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print(usernameController.text);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              buildBackgroundImage(context),
              Positioned(
                //center of the screen
                top: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,

                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              //obscureText: obscureText,
                              controller: AppController.usernametextcontroller,
                              decoration: InputDecoration(
                                hintText: 'Username',
                                prefixIcon: Icon(Icons.person),
                                //suffixIcon: Icon(iconvis),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 23, 149, 233),
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 23, 149, 233),
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Username';
                                } else if (value.length < 9) {
                                  return "Username must be more than 9 chracters";
                                } else if (!value[0]
                                    .contains(RegExp(r'[A-Z]'))) {
                                  return "First Character in userName must be Uppercase ";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          // password field
                          buildTextField(
                            textEditingController: passwordController,
                            hintText: 'Password',
                            icon: Icons.lock,
                            iconvis: Icons.visibility_off,
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          // remember and forget
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: true,
                                    checkColor: Colors.white,
                                    activeColor: const Color.fromARGB(
                                        255, 126, 180, 105),
                                    onChanged: (onChanged) {},
                                  ),
                                  const Text(
                                    "remember me",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 126, 180, 105),
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (kDebugMode) {
                                    print("h");
                                  }
                                },
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'forgot password?',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 126, 180, 105),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          // login button
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Exams()),
                                );
                              }
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // finger icon
                          const Icon(
                            Icons.fingerprint,
                            size: 60,
                            color: Colors.blue,
                          ),
                          // text
                          const Text(
                            "use touch id",
                            style: TextStyle(color: Colors.blue),
                          ),
                          const SizedBox(height: 20),
                          // register
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Don\'t have an account? ',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Register Now',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 126, 180, 105),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
