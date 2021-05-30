import 'package:flutter/material.dart';
import 'package:menuscreen/main.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  String _data='';

  _scan() async {
    await FlutterBarcodeScanner.scanBarcode('#000000', 'Cancel', true, ScanMode.QR).then((value) => setState(()=>_data=value));

  }

  CalendarController _controller;
  TextStyle dayStyle (FontWeight fontWeight) {
    return TextStyle(color: Colors.black,
      fontWeight: fontWeight,
    );
  }

  @override
  void initState() {
    super.initState();
    _controller=CalendarController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[50],
        title: Text(
          "Attendance".toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 10,),
              TableCalendar(
                startingDayOfWeek: StartingDayOfWeek.monday,
                calendarStyle: CalendarStyle(
                  weekdayStyle: dayStyle(FontWeight.normal),
                  weekendStyle: dayStyle(FontWeight.normal),
                  selectedColor: Color(0xff416d6d),
                  todayColor: Color(0xff416d6d),
                ),

                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Farsan'
                  ),
                  weekendStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                      fontFamily: 'Farsan'
                  ),
                ),

                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ),
                calendarController: _controller,
              ),
              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                  ),
                  color: Colors.green[50],
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 50),
                          child: Text('Options', style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nunito',
                          ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top:20,right: 20),
                          child: Column(
                            children: [
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                textColor: Colors.black,
                                height: 50.0,
                                color: Colors.white,
                                onPressed: ()=> _scan(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.person_add_alt_1,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text('Check Attendance',),
                                    Text(_data),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                textColor: Colors.black,
                                height: 50.0,
                                color: Colors.white,
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.preview,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text('View Attendance',)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
