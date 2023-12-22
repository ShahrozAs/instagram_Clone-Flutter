import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:instagram_mad/homescreen.dart';
import 'package:instagram_mad/signup.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  //wrong Email
  void WrongEmail() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(title: Text('Wrong Email'));
      },
    );
  }

  //wrong Password
  void WrongPassword() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(title: Text('Wrong Password'));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Adding gradient background to AppBar
        backgroundColor: Colors.transparent, // Making AppBar transparent
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(254, 249, 243, 1),
                Color.fromRGBO(235, 243, 254, 1),
                Color.fromRGBO(238, 251, 242, 1),
              ],
              stops: [0.0, 0.35, 1.0],
            ),
          ),
        ),
        elevation: 0, // Removing AppBar's shadow
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(254, 249, 243, 1),
              Color.fromRGBO(235, 243, 254, 1),
              Color.fromRGBO(238, 251, 242, 1),
            ],
            stops: [0.0, 0.35, 1.0],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    const Text(
                      "English (US)",
                      style: TextStyle(color: Colors.black45),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Image.asset(
                        "assets/images/logo.webp",
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 50,
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: "Username, email or mobile number",
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 0,
                        left: 20,
                        right: 20,
                        bottom: 10,
                      ),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: "Password",
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: ElevatedButton(
                        onPressed: () async {
                          //Show loading circle
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                    child: CircularProgressIndicator());
                              });

                          try {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text);
                            Navigator.pop(context);
                          } on FirebaseAuthException catch (e) {
                            //pop Loading
                            Navigator.pop(context);
                            if (e.code == 'user-not-found') {
                              WrongEmail();
                            } else if (e.code == 'wrong-password') {
                              WrongPassword();
                            }
                          }

                          // await FirebaseAuth.instance
                          //     .signInWithEmailAndPassword(
                          //         email: emailController.text,
                          //         password: passwordController.text);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Log in",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(0, 100, 224, 1),
                        ),
                      ),
                    ),
                    const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Color.fromRGBO(0, 100, 224, 1),
                          width: 2,
                        ),
                      ),
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Create new account",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 100, 224, 1),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/logo_meta.png",
                            width: 30,
                            height: 30,
                          ),
                          const Text(
                            "Meta",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
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
      ),
    );
  }
}
