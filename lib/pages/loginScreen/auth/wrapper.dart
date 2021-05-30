import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:menuscreen/pages/loginScreen/auth/login.dart';
import 'package:menuscreen/pages/main/drawerScreen.dart';
import 'package:menuscreen/pages/main/homeScreen.dart';



class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
        if (snapshot.hasData) {
          print("data exists");
          return Scaffold(
            body: Stack(
              children: [
                DrawerScreen(),
                HomeScreen()
              ],
            ),
          );
        } else {
          return LoginPage();
        }
      },
    );
  }
}
