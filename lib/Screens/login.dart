// ignore_for_file: avoid_print, prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'categorise.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          //background image
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/quiz-login.jpg"),
                    fit: BoxFit.fill)),
          ),
          Column(
            children: [
              SizedBox(
                height: 130,
              ),
              //login text
              const Text(
                'Login',
                style: TextStyle(
                    color: Color.fromARGB(255, 126, 180, 105),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Expanded(
                  child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //username filed
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "username",
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 126, 180, 105)),
                          prefixIcon: const Icon(Icons.person),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 23, 149, 233)),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 23, 149, 233)),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username must not be empty';
                          }
                           else if(value.length<9) {
                            return 'Username must be more than 9 chracters';
                           }
                           else if(!value[0].contains(RegExp(r'[A-Z]'))){
                             return "First Character in userName must be Uppercase ";
                           }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
      
                      //password filed
                      TextField(
                        decoration: InputDecoration(
                          hintText: "password",
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 126, 180, 105)),
                          prefixIcon: const Icon(Icons.lock),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 23, 149, 233)),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 23, 149, 233)),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      //remember and forrget
                      Row(
                        children: [
                          SizedBox(width: 8),
                          Checkbox(
                            value: true,
                            checkColor: Colors.white,
                            activeColor: Color.fromARGB(255, 126, 180, 105),
                            onChanged: (onChanged) {},
                          ),
                          const Text(
                            "remember me",
                            style: TextStyle(
                                color: Color.fromARGB(255, 126, 180, 105)),
                          ),
                          const SizedBox(
                            width: 44,
                          ),
                          GestureDetector(
                            onTap: () {
                              print("h");
                            },
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('forgot password ',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 126, 180, 105),
                                      fontWeight: FontWeight.bold)),
                            ),
                          )
                        ],
                      ),
      
                      //login button
                      Container(
                        width: 140,
                        height: 30,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Exams()),
                            );
                            }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      //finger icon
                      const Icon(
                        Icons.fingerprint,
                        size: 60,
                        color: Colors.blue,
                      ),
                      //text
                      const Text("use touch id",
                          style: TextStyle(color: Colors.blue)),
                      const SizedBox(
                        height: 75,
                      ),
      
                      //register
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('Don\'t have an account? ',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold)),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Register Now',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 126, 180, 105),
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
            ],
          ),
        ]),
      ),
    );
  }
}
