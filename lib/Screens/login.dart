// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.c3f689b85de559364d0238de98d00b68?rik=4NwqGsUmcl1Kfw&riu=http%3a%2f%2ffrancoise.f.r.pic.centerblog.net%2f2bfswcfr.jpg&ehk=K40Ju9Tp%2bPg3le6axmXeXCjX1Ja8E34o9hPM8Ulv%2fuw%3d&risl=&pid=ImgRaw&r=0"),
                    fit: BoxFit.fill)),
          ),
          Column(
            children: [
              const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                          decoration: InputDecoration(
                            hintText: "username", hintStyle: const TextStyle(color: Colors.white),
                              prefixIcon: const Icon(Icons.person)
                            ,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color.fromARGB(255, 254, 255, 251)),
                                borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          ),
                    const SizedBox(height: 30),
                    TextField(
                          decoration: InputDecoration(
                            hintText: "password", hintStyle: const TextStyle(color: Colors.white),
                              prefixIcon: const Icon(Icons.lock)
                            ,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color.fromARGB(255, 254, 255, 251)),
                                borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          ),
                    const SizedBox(height: 30),
                    Container(
                      width: 150,
                      color: const Color.fromARGB(255, 158, 18, 18),
                      height: 20.0,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Login button pressed');
                          print(emailController.text);
                          print(passwordController.text);
                        },
                        
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    Image.network(
                          "https://png.pngtree.com/element_our/20200702/ourlarge/pngtree-flat-fingerprint-png-download-image_2286273.jpg",
                          height: 100,
                          width: 100,
                    ),
                    const Text("use touch id",
                            style: TextStyle(color: Color.fromARGB(255, 253, 253, 253))),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 150),
                            Checkbox(
                              value: true,
                              onChanged: (onChanged) {},
                            ),
                            const Text(
                              "remember me",
                              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            const SizedBox(
                              width: 180,
                            ),
                            GestureDetector(
                              onTap: () {
                                print("h");
                              },
                              child: const Text("forgot password?",
                              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            )
                          ],
                        )
                  ],
                ),
              )),
              const SizedBox(height: 20.0),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child:const Text(
                    'Don\'t have an account? ',style: TextStyle(
                    color: Colors.white)
                  ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Register Now',style: TextStyle(
                    color: Colors.white)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
