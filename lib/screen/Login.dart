import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../models/Profile.dart';
import 'home.dart';
import '../screen/shopping.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: firebase,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Error"),
            ),
            body: Center(
              child: Text("${snapshot.error}"),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          child: FloatingActionButton(
                            child: Icon(Icons.arrow_back),
                            backgroundColor: Colors.indigo,
                            foregroundColor: Colors.white,
                            heroTag: Text("btn_backhome"),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HomeScreen();
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      "assets/images/logo.png",
                      height: 200,
                      width: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: "Please Enter Password"),
                                EmailValidator(
                                    errorText:
                                        "Please Enter A Valid Email Address.")
                              ]),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: "      Enter your Email",
                              ),
                              onSaved: (newValue) {
                                profile.email = newValue!;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: "Please Enter Password"),
                              ]),
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelText: "      Enter your Password",
                              ),
                              onSaved: (newValue) {
                                profile.password = newValue!;
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                          width: 120,
                          
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState?.save();
                                  try {
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                      email: profile.email,
                                      password: profile.password,
                                    )
                                        .then(
                                      (value) {
                                        Fluttertoast.showToast(
                                          msg: "Login Success",
                                          gravity: ToastGravity.SNACKBAR,
                                          timeInSecForIosWeb: 3,
                                          backgroundColor: Colors.green,
                                          textColor: Colors.white,
                                        );
                                        formKey.currentState?.reset();
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return ShopScreen();
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  } on FirebaseAuthException catch (e) {
                                    Fluttertoast.showToast(
                                      msg: "${e.message}",
                                      gravity: ToastGravity.SNACKBAR,
                                      timeInSecForIosWeb: 3,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                    );
                                  }
                                }
                              },
                              icon: Icon(
                                Icons.login,
                              ),
                              label: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
