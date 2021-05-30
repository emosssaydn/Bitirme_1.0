import 'package:flutter/material.dart';
import '../../../main.dart';
import 'contextExtension.dart';

class Application extends StatefulWidget {
  const Application({Key key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar:AppBar(title: Text( "Applications"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            },
          ),
        ),

        body:
        new ListView(
          children:[
            Text("New Applications",style: TextStyle(fontSize: 5.0,color: Colors.white),),
            SizedBox(height: 50),
            Container(
              height: 600,
              padding: EdgeInsets.symmetric(horizontal:20.0),
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    // ignore: missing_return
                    return Container(
                      width: 300,
                      height: 100,
                      margin: EdgeInsets.only(right: 20.0,),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:Column(
                        children:[
                          Spacer(),
                          Container(
                            child: Image(
                              image: AssetImage('assets/images/butter.jpg'),
                              height:200,

                            ),
                          ),
                          //Spacer(),
                          Container(
                            width: 200,
                            height: 290,
                            child: Text(
                              ('Here is the information of the apllications'),
                              // maxLines: 5,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Column(
                                    children: [
                                      Text("Start Date: ", style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold ),),
                                      Text("End Date: ",   style: TextStyle(color: Colors.black,fontSize: 18 , fontWeight: FontWeight.bold),),
                                    ]
                                ),
                              ],
                            ),
                          ),

                          Divider(),
                          Spacer(),
                          Row(
                            //  Sağdan-Sola Hizalama
                            mainAxisAlignment: MainAxisAlignment.center,
                            //  Yukarıdan-Aşağıya Hizalama
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: context.dynamicHeight(0.05),
                                width: context.dynamicWidth(0.20),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.amber),
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(10)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                  child: Text("Apply"),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(width: 20),
                              SizedBox(
                                height: context.dynamicHeight(0.05),
                                width: context.dynamicWidth(0.20),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.amber),
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(10)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                  child: Text("Cancel"),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
