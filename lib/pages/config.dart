
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen  = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0,10))
];
// List<Map> categories = [
//   {'name' : 'Scholarship', 'iconPath' : 'images/cap.png'},
//   {'name' : 'Notification', 'iconPath' : 'images/bill.png'}
// ];

List<Map> drawerItems=[
  {
    'icon' : Icons.home,
    'title' : 'Home'
  },
  {
    'icon': Icons.person,
    'title' : 'Profile'
  },
  {
    'icon' : Icons.payment_outlined,
    'title' : 'Payment'
  },
  {
    'icon' : Icons.sentiment_satisfied_alt_outlined ,
    'title' : 'Employee Scoring'
  },
  {
    'icon' : Icons.phone_in_talk,
    'title' : 'Contact Us'
  }



];