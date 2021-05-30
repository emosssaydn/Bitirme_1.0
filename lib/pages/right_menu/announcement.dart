import 'package:flutter/material.dart';
import 'package:menuscreen/main.dart';


class Announcement extends StatefulWidget {
  @override
  _AnnouncementState createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {

  List<Item> _data=generateItems(10);

  Widget _buildListPanel()
  {
    return ExpansionPanelList(
      expansionCallback: (int  index, bool isExpanded){
        setState(() {
          _data[index].isExpanded= !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item){
        return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerValue),
              );
            },
            body: ListTile(
              title: Text(item.expandedValue),
              subtitle: Text('to delete  this panel tap the trash'),
              trailing: Icon(Icons.delete),
              onTap: (){
                setState(() {
                  _data.removeWhere((currentItem) => item==currentItem);
                });
              },
            ),
          isExpanded: item.isExpanded
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[50],
        title: Text(
          "Announcement".toUpperCase(),
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
      body: SingleChildScrollView(
        child: Container(
          child: _buildListPanel(),
        ),
      ),
    );
  }
}

class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item({this.expandedValue,this.headerValue, this.isExpanded=false});

}
List<Item> generateItems(int numberOfItems){
  return List.generate(numberOfItems, (index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is panel number $index',


    );
  });
}
