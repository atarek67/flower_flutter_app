import 'package:flower_app/pages/login.dart';
import 'package:flower_app/shared/constants.dart';
import 'package:flower_app/shared/custom_textfield.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 0,
                  ),
                  MyTextFieldd(
                    keyboardType: TextInputType.text,
                    hinttext: 'UserName',
                    isPassword: false,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  MyTextFieldd(
                    keyboardType: TextInputType.emailAddress,
                    hinttext: 'Email',
                    isPassword: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  MyTextFieldd(
                    keyboardType: TextInputType.visiblePassword,
                    hinttext: 'Password',
                    isPassword: true,
                    textInputType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(BTNgreen),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Do not have an account?",
                          style: TextStyle(fontSize: 18)),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            );
                          },
                          child: const Text('sign in',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18))),
                    ],
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
