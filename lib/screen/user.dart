import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping/screen/home.dart';
import '../screen/shopping.dart';

class UserScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 250, 30, 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.indigo,
                  ),
                  child: Center(
                    child: Text(
                      "${auth.currentUser?.email}",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 18,
                        color: Colors.white,
                        height: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                //Card
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: FloatingActionButton(
                      heroTag: "btn1",
                      child: Icon(Icons.home),
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ShopScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    child: FloatingActionButton(
                      heroTag: "btn2",
                      child: Icon(Icons.logout),
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      onPressed: () {
                        auth.signOut().then(
                          (value) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomeScreen();
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
