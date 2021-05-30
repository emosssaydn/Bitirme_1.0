import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menuscreen/pages/right_menu/application/application.dart';
import 'file:///C:/Users/anisa.doci/AndroidStudioProjects/menuscreen/lib/pages/attendance/attendance.dart';
import '../right_menu/menu_list.dart';
import '../right_menu/announcement.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset=0;
  double yOffset=0;
  double scaleFactor=1;
  bool isDrawerOpen= false;

  final String pageTitle ='Homepage';

  void setPageTitle() {

  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            color: Colors.green[50],
          borderRadius: BorderRadius.circular(isDrawerOpen ?40 : 0.0)
        ),

        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.only(left:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen?IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      setState(() {
                        xOffset=0;
                        yOffset=0;
                        scaleFactor=1;
                        isDrawerOpen=false;

                      });
                    },
                  ): IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        setState(() {
                          xOffset = 230;
                          yOffset = 150;
                          scaleFactor = 0.6;
                          isDrawerOpen=true;
                        });
                      }),
                  Container(
                    child: Text(
                      pageTitle.toUpperCase(),
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  CircleAvatar(),

                ],
              ),
            ),
            Divider(),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => Announcement(),
                        ),
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 20,
                            offset: Offset(0,10)
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),

                      ),

                      child: Column(
                        children: [
                          Icon(Icons.announcement_outlined , size: 50,),
                          SizedBox(height: 10,),
                          Text('Announcement',style: TextStyle(fontFamily: 'Nunito'),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => Attendance(),
                        ),
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 20,
                              offset: Offset(0,10)
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.fact_check_outlined , size: 50,),
                          SizedBox(height: 10,),
                          Text('Attendance',style: TextStyle(fontFamily: 'Nunito'),),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => Application(),
                        ),
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 20,
                              offset: Offset(0,10)
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.app_registration, size: 50,),
                          SizedBox(height: 10,),
                          Text('Applications',style: TextStyle(fontFamily: 'Nunito'),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => MenuList(),
                        ),
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 20,
                              offset: Offset(0,10)
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.restaurant_menu_outlined , size: 50,),
                          SizedBox(height: 10,),
                          Text('Menu List',style: TextStyle(fontFamily: 'Nunito'),),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    // onTap: (){
                    //   Navigator.push(context,
                    //     MaterialPageRoute(
                    //       builder: (context) => Suggestion(),
                    //     ),
                    //   );
                    // },
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 20,
                              offset: Offset(0,10)
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.supervisor_account, size: 50,),
                          SizedBox(height: 10,),
                          Text('Permissions',style: TextStyle(fontFamily: 'Nunito'),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 20,
                            offset: Offset(0,10)
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.lightbulb_outline, size: 50,),
                        SizedBox(height: 10,),
                        Text(
                          'Suggestion & Complains',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Nunito'
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    
  }
}
