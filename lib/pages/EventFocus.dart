import 'package:flutter/material.dart';
import 'dart:convert';

class EventFocus extends StatefulWidget {
  @override
  _EventFocusState createState() => _EventFocusState();
}

class _EventFocusState extends State<EventFocus> {
  String _testeventinfo = 'This event will be spectacular. You are lucky to attend this event. This event will be spectacular. You are lucky to attend this event. This event will be spectacular. You are lucky to attend this event. This event will be spectacular. You are lucky to attend this event. This event will be spectacular. You are lucky to attend this event. This event will be spectacular. You are lucky to attend this event. ';
  String _testvenueinfo = 'You will never find this venue. You will get lost. You will never find this venue. You will get lost. You will never find this venue. You will get lost. You will never find this venue. You will get lost. You will never find this venue. You will get lost. You will never find this venue. You will get lost. You will never find this venue. You will get lost. ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Event'),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_testeventinfo),
              new Text(_testvenueinfo),
            ],
          ),
        ));
  }
}
