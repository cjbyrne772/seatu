import 'package:flutter/material.dart';
import 'dart:convert';
import 'EventFocus.dart';

//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EventList extends StatefulWidget {
  final String data;

  EventList({Key key, this.data}) : super(key: key);

//  TodosScreen({Key key, @required this.todos}) : super(key: key);

  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    List elist;
    var extractdata = json.decode(widget.data);
    elist = extractdata["event"];
    print(extractdata["login"]);
    print(elist.length);
    return Scaffold(
        body: new ListView.builder(
            itemCount: elist.length,
            itemBuilder: (BuildContext context, i) {
              return new ListTile(
                onTap: () => _tixfocus(i, elist[i]["shortDesc"]),
                title: new Text(elist[i]["shortDesc"]),
              );
            }));

    // Text('eeeeeeeeeventListttttttt'));
  } //build

  _tixfocus(int index, String desc) {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EventFocus()),
      //    MaterialPageRoute(builder: (context) => EventList(data: _testJstr)),
    );

    print(desc);
  }
} // state
