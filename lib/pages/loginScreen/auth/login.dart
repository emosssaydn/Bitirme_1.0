import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:menuscreen/main.dart';
import 'package:menuscreen/pages/loginScreen/constants.dart';
import 'package:menuscreen/pages/loginScreen/context_extension.dart';
import 'package:firebase_core/firebase_core.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  bool loading = false;

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Log In", style: TextStyle(fontWeight: FontWeight.w300)),
      ),
      backgroundColor: Colors.black,
      body: loading
          ? Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
          backgroundColor: Colors.white,
        ),
      )
          : Form(
        key: _formKey,
        child: Container(
          color: secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Expanded(
                flex: 6,
                child: Center(
                  child: Lottie.asset('assets/images/1.json'),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  SizedBox(width: context.dynamicWidth(0.03)),
                  Icon(
                    Icons.alternate_email,
                    color: Colors.black,
                  ),
                  SizedBox(width: context.dynamicWidth(0.03)),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                            borderSide: new BorderSide(
                              style: BorderStyle.none,
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                          labelText: 'Email',
                          labelStyle: new TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 16.0)),
                      onChanged: (x) {
                        setState(() {
                          _email = x;
                        });
                      },
                      validator: (x) {
                        if (x.contains("@")) {
                          return null;
                        } else {
                          return "Please enter a valid email.";
                        }
                      },
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(width: context.dynamicWidth(0.05)),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  SizedBox(width: context.dynamicWidth(0.03)),
                  Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  SizedBox(width: context.dynamicWidth(0.03)),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                            borderSide: new BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                          labelText: 'Password',
                          labelStyle: new TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 16.0)),
                      obscureText: true,
                      onChanged: (x) {
                        setState(() {
                          _password = x;
                        });
                      },
                      validator: (x) {
                        if (x.length >= 6) {
                          return null;
                        } else {
                          return "Password must be at least 6 character";
                        }
                      },
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(width: context.dynamicWidth(0.05)),
                ],
              ),
              Spacer(),
              Expanded(
                child: Container(
                  margin: context.paddingHorizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text(
                          "Forget your password ?",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                height: context.dynamicHeight(0.1),
                width: context.dynamicWidth(0.4),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(primaryColor),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ))),
                  child: Text("Giri?? Yap"),
                  onPressed: () {
                    login();
                  },
                ),
              ),
              Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

// login function
  void login() {
    if (_formKey.currentState.validate()) {
      setState(() {
        loading = true;
      });

      //Firebase Login

      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password)
          .then((user) {
        setState(() {
          loading = false;
        });

        //Go Home Page

        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => Homepage()),
                (Route<dynamic> route) => false);
      }).catchError((onError) {
        setState(() {
          loading = false;
        });
        // if theres a problem
        print("hata: " + onError.toString());
      });
    }
  }
}
