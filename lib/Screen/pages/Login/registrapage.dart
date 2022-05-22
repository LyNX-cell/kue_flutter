import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kue_flutter/Components/widgets/button.dart';
import 'package:kue_flutter/Screen/pages/Login/loginpage.dart';

class Registrapage extends StatefulWidget {
  const Registrapage({Key? key}) : super(key: key);

  static String routeName = "/regispage";
  @override
  State<Registrapage> createState() => _RegistrapageState();
}

class _RegistrapageState extends State<Registrapage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _conpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 9, 61, 121),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Logo

                SizedBox(
                  height: 300,
                  child: Image.asset(
                    "asset/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                //form input

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    controller: _emailController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Colors.white)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "*required";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),

                // form password

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        hintText: 'PassWord',
                        hintStyle: const TextStyle(color: Colors.white)),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'This field is required';
                      }
                      if (value.trim().length < 6) {
                        return 'Password must be at least 6 characters in length';
                      }
                      // Return null if the entered password is valid
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),

                //Confirm Password field

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    controller: _conpasswordController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        hintText: 'Confirm PassWord',
                        hintStyle: const TextStyle(color: Colors.white)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please re-enter password';
                      }
                      print(_passwordController.text);
                      print(_conpasswordController.text);
                      if (_passwordController.text !=
                          _conpasswordController.text) {
                        return "Password does not match";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                // login button

                Button(
                  name: 'SignUp',
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text)
                          .then(
                        (value) {
                          Navigator.pushReplacementNamed(
                              context, LogiPage.routeName);
                        },
                      );
                    }
                  },
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
