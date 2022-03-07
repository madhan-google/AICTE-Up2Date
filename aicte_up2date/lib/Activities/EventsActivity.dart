import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aicte_up2date/Models/EventModel.dart';

class EventsActivity extends StatefulWidget{
  @override
  State<EventsActivity> createState() => _EventsActivity();
  
}
class _EventsActivity extends State<EventsActivity>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.pinkAccent,
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      appBar: AppBar(
        title: const Text('Events'),
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
            itemBuilder: (builder, context) => EventModel()
        ),
      ),
    );
  }
  
}