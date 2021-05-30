import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';
class Contact extends StatelessWidget {
  Contact({Key key}) : super(key: key);
    @override
    Widget build(BuildContext context) =>
    new Scaffold(
          backgroundColor: Colors.green[50],
          appBar: new AppBar(
            title: new Text("Contact",style: TextStyle(fontFamily: 'Nunito', fontSize: 20),),
            backgroundColor: Color(0xff416d6d),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          body: new Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('KYK Vezneciler Yurdu'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Nunito',
                    ),),
                  SizedBox(
                    height: 20.0,
                    width: 300.0,
                    child: Divider(),
                  ),
                  Text('Yurt Idaresi'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Nunito',

                    ),),
                  SizedBox(
                    height: 30.0,
                  ),
                  Card(

                    shape: RoundedRectangleBorder(
                      side: new BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: FlatButton.icon(
                              icon: Icon(Icons.add_to_home_screen),
                              label: Text(
                                "Open Website",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Nunito',
                                ),
                              ),
                              onPressed: () => launch("http://google.com"),
                            )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: new BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: FlatButton.icon(
                            icon: Icon(Icons.call),
                            label:Text(
                              "Make a Call", style: TextStyle(fontSize: 18,fontFamily: 'Nunito',),
                            ),
                            onPressed: () => launch("tel://123"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Card(

                    shape: RoundedRectangleBorder(
                      side: new BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: FlatButton.icon(
                            icon: Icon(Icons.email),
                            label:Text(
                                "Send a Email",
                                style: TextStyle(fontSize: 18,
                                  fontFamily: 'Nunito'
                                )),
                            onPressed: () =>
                                launch(
                                    "mailto:kyk@gmail.com"),
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

