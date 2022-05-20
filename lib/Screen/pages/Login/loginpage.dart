import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kue_flutter/Components/navigation/buttom_nav.dart';
import 'package:kue_flutter/Components/widgets/button.dart';
import 'package:kue_flutter/Screen/pages/Login/registrapage.dart';
import 'package:kue_flutter/Screen/pages/home/home_screen.dart';

class LogiPage extends StatefulWidget {
  const LogiPage({Key? key}) : super(key: key);

  static String routeName = "/loginpage";

  @override
  State<LogiPage> createState() => _LogiPageState();
}

class _LogiPageState extends State<LogiPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 61, 121),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
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
                  height: 40,
                ),

                //form input
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Hombar()));
                  },
                  child: Text(
                    "Guest",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    controller: _emailController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
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
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }

                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return "Please enter a valid email address";
                      }

                      return null;
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
                    // key: _formKey,

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
                      hintStyle: const TextStyle(color: Colors.white),
                    ),
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
                  height: 30,
                ),

                // login button

                Button(
                  name: 'Login',
                  press: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();

                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text)
                          .then((value) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Hombar()));
                      });
                    }
                  },
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 30,
                ),

                //sign UP

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Don't have an account yet?  "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Registrapage.routeName);
                      },
                      child: const Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
