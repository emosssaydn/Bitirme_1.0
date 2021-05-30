import 'package:flutter/material.dart';
import 'pages/loginScreen/auth/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    home: Homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Dormitory System',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
      ),
      home: Wrapper(),
    );
  }
}

