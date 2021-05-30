import 'package:flutter/material.dart';
import 'package:menuscreen/main.dart';
import 'package:menuscreen/pages/main/homeScreen.dart';
class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List<String> imgUrl = [
    "https://purepng.com/public/uploads/large/purepng.com-food-platefood-meat-plate-tasty-grill-breakfast-dinner-french-fries-launch-941524624270veqpm.png",
    "https://toreys.net/wp-content/uploads/2019/06/steak-fries-400x209-reduced.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-4.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-3.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-2.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-8.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      //let's start by the appbar
      appBar: AppBar(
        backgroundColor: Colors.green[50],
        title: Text(
          "Yemek Menu".toUpperCase(),
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

      //Now let's build the body of our app
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's create the welcoming Text

            SizedBox(
              height: 8.0,
            ),
            Text(
              "Weekly Menu List",
              style: TextStyle(fontFamily: 'Nunito',fontSize: 18,),
            ),
            SizedBox(
              height: 10.0,
            ), //Yemek menüsü ile başlık arasındaki mesafedir.
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                //let's change the aspect ration for the child card
                childAspectRatio: 0.8,
                children: [

                  FlatButton(
                      child: foodCard(
                        imgUrl[0],
                        "Pazartesi",
                        "Omlet\nTavuk Sote\nKuru Fasulye",
                      ),
                      onPressed: () {
                        print('1 nolu butona basıldı');
                      }),

                  FlatButton(
                      child: foodCard(
                        imgUrl[1],
                        "Salı",
                        "Omlet\nTavuk Sote\nKuru Fasulye",
                      ),
                      onPressed: () {
                        print('2 nolu butona basıldı');
                      }),
                  FlatButton(
                      child: foodCard(
                        imgUrl[2],
                        "Çarşamba",
                        "Omlet\nTavuk Sote\nKuru Fasulye",
                      ),
                      onPressed: () {
                        print('3 nolu butona basıldı');
                      }),
                  FlatButton(
                      child: foodCard(
                        imgUrl[3],
                        "Perşembe",
                        "Omlet\nTavuk Sote\nKuru Fasulye",
                      ),
                      onPressed: () {
                        print('4 nolu butona basıldı');
                      }),
                  FlatButton(
                      child: foodCard(
                        imgUrl[4],
                        "Cuma",
                        "Omlet\nTavuk Sote\nKuru Fasulye",
                      ),
                      onPressed: () {
                        print('5 nolu butona basıldı');
                      }),
                  FlatButton(
                      child: foodCard(
                        imgUrl[5],
                        "Cumartesi",
                        "Omlet\nTavuk Sote\nKuru Fasulye",
                      ),
                      onPressed: () {
                        print('6 nolu butona basıldı');
                      }),
                  FlatButton(
                      child: foodCard(
                        imgUrl[5],
                        "Pazar",
                        "Omlet\nTavuk Sote\nKuru Fasulye",
                      ),
                      onPressed: () {
                        print('7 nolu butona basıldı');
                      }),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}

Widget foodCard(String img, String title, String menu, {FlatButton child}) {
  return Container(
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              img,
              height: 50.0,
            ), //İmagelerin görünüşü
             //Günler ile İmage arasındaki boşluk
            SizedBox(
              height: 10.0,
            ),
            Flexible(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Nunito"
                ),
              ),
            ), //Burada Günlerin text olarak yazıldığı child var.
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "${menu} ",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Farsan"

                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
