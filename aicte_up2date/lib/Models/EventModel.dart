import 'dart:convert';

import 'package:aicte_up2date/Models/EventAPIModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EventModel extends StatefulWidget{
  @override
  State<EventModel> createState() => _EventModel();
}
class _EventModel extends State<EventModel>{
  // EventModel()
  // getAPI();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.network('https://firebasestorage.googleapis.com/v0/b/up2date-9f3b1.appspot.com/o/images%2Fdownload.jfif?alt=media&token=3716984f-107e-4326-a204-9aabc81bdc54',
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
                right: 10, top: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '07',
                        style: const TextStyle(
                            fontSize: 27,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Varela'
                        ),
                      ),
                      Text(
                        'JAN',
                        style: const TextStyle(
                            fontSize: 27,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Varela'
                        ),
                      )
                    ],
                  ),
                )
            )
          ],
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
              'EVENT NAME',
              style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                // fontFamily: 'Varela'
              )
          ),
        ),
        SizedBox(height: 5,),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Icon(
                Icons.location_pin,
              ),
              SizedBox(width: 10,),
              Text(
                'Chennai',
                style: TextStyle(
                    fontSize: 18
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 10,),
            // CircleAvatar(),
            Container(
              height: 30,
              width: 30,
              child: Image.asset('images/av2.png'),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            ),
            const SizedBox(width: 10,),
            const Text('+13 Joined'),
            const Spacer(),
            ElevatedButton(
              onPressed: (){
                registerToThisEvent();
              },
              child: const Text('Join'),
            ),
            SizedBox(width: 10,)
          ],
        ),
        SizedBox(height: 10,)
      ],
    );
  }
  // Future<void> getAPI() async{
  //   var response = await http.get(Uri.parse('https://uptodatebackend.herokuapp.com/event/getevent'));
  //   print(response.body);
  // }
  void registerToThisEvent(){

  }

}