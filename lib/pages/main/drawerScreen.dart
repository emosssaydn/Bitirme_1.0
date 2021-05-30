import 'package:flutter/material.dart';
import '../config.dart';
import '../left_menu/profile.dart';
import '../left_menu/contact.dart';
import 'homeScreen.dart';
import '../left_menu/payment.dart';
import '../left_menu/scoring.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();


}

class _DrawerScreenState extends State<DrawerScreen> {
  final int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: primaryGreen,
      child: new ListView(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(10),
            child: new DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                new CircleAvatar(
                  radius: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Anisa DOCI',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,

                    ))
              ],
            )),
            color: primaryGreen,
          ),
          ListTile(
            title: Text('Home',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.home,color: Colors.white,),
            onTap: (){
              if(selected==0){
                return HomeScreen();
              }

            },
          ),
          ListTile(
            title: Text('Profile',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.person,color: Colors.white,),
            onTap: (){

            },
          ),
          ListTile(
            title: Text('Payment',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.payment_outlined,color: Colors.white,),
            onTap: (){

            },
          ),
          ListTile(
            title: Text('Rate Us',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.sentiment_satisfied_alt_outlined,color: Colors.white,),
            onTap: (){

            },
          ),
          ListTile(
            title: Text('Contact Us',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.phone_in_talk,color: Colors.white,),
            onTap: (){
              Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Contact()),);

            },

          ),
          SizedBox(height: 30,),
          Divider(),
          SizedBox(height: 100,),
          ListTile(
            title: Text('Log Out',style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.logout,color: Colors.white,),
            onTap: (){

            },
          ),

        ],
      ),
    );
  }
}
