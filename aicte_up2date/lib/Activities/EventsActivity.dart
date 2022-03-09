import 'dart:convert';
import 'package:aicte_up2date/Models/EventAPIModel.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aicte_up2date/Models/EventModel.dart';
import 'package:http/http.dart' as http;

class EventsActivity extends StatefulWidget{
  @override
  State<EventsActivity> createState() => _EventsActivity();
}
class _EventsActivity extends State<EventsActivity>{
  // late EventAPIModel _eventAPIModel;
  static List<EventAPIModel> list = [];
  static getAPI() async{
    var response = await http.get(Uri.parse('https://uptodatebackend.herokuapp.com/event/getevent'));
    print(response.body);
    for(var x in jsonDecode(response.body)){
      list.add(EventAPIModel.fromJson(x));
    }
  }
  //
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAPI();
  }
  @override
  Widget build(BuildContext context) {
    // getAPI();
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.white,
        color: Colors.blue,
        buttonBackgroundColor: Colors.yellow,
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
            if(index==0||index==1||index==2) getAPI();
        },
      ),
      appBar: AppBar(
        title: const Text('Events'),
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index){
              // print(index);
              int len = list[index].registers.length;
              String strength = '+$len joined';
              List<String> ddd = list[index].start_date.toString().split(' ');
              print(list[index].imageUrl);
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.network(list[index].imageUrl,
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
                                  ddd[2],
                                  style: const TextStyle(
                                      fontSize: 27,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Varela'
                                  ),
                                ),
                                Text(
                                  ddd[1].toUpperCase(),
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
                        list[index].title,
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
                          list[index].location,
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
                      Text(strength),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: (){
                          // registerToThisEvent();
                        },
                        child: const Text('Join'),
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  SizedBox(height: 10,)
                ],
              );
            },
          // itemCount: list.length,
        ),
      ),
    );
  }
  
}