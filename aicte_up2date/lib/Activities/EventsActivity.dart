import 'dart:convert';
import 'package:aicte_up2date/Activities/RegistrationActivity.dart';
import 'package:aicte_up2date/GlobalVariable.dart';
import 'package:aicte_up2date/Models/EventAPIModel.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:aicte_up2date/Models/EventModel.dart';
import 'package:http/http.dart' as http;

class EventsActivity extends StatefulWidget{
  @override
  State<EventsActivity> createState() => _EventsActivity();
}
class _EventsActivity extends State<EventsActivity>{
  // late EventAPIModel _eventAPIModel;
  List<EventAPIModel> list = [];
  Future<List<EventAPIModel>> getAPI() async{
    var response = await http.get(Uri.parse('https://uptodatebackend.herokuapp.com/event/getevent'));
    // print(response.body);
    for(var x in jsonDecode(response.body)){
      list.add(EventAPIModel.fromJson(x));
    }
    String iid = list[0].id;
    print('cc $iid');
    return list;
  }
  String eventId = '';
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getAPI();
  // }
  @override
  Widget build(BuildContext context) {
    // getAPI();
    list.clear();
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
        actions: <Widget>[
          IconButton(
              onPressed: (){
                FirebaseAuth.instance.signOut();},
              icon: const Icon(Icons.logout))
        ]
      ),
      body: Center(
        child: FutureBuilder<List<EventAPIModel>>(
          future: getAPI(),
          builder: (context, snapshot){
            // EventAPIModel eventAPIModel = snapshot.data;
            if(snapshot!=null){
              return ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index){
                  // print(index);
                  int len = snapshot.data![index].registers.length;
                  String strength = '+$len joined';
                  List<String> ddd = snapshot.data![index].start_date.toString().split('/');
                  print(ddd);
                  print(snapshot.data![index].imageUrl);
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Image.network(snapshot.data![index].imageUrl,
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
                                      ddd[0],
                                      style: const TextStyle(
                                          fontSize: 27,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Varela'
                                      ),
                                    ),
                                    Text(
                                      GlobalVariable.months[int.parse(ddd[1])],
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
                              setState(() {
                                eventId = list[index].id;
                              });
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
                },
                // itemCount: list.length,
              );
            }else{
              return Center(child: Text('Loading..'),);
            }
          },
        )
      ),
    );
  }
  registerToThisEvent() async{
    var resp = await http.get(Uri.parse('https://uptodatebackend.herokuapp.com/event/geteventbyid?id=$eventId'));
    EventAPIModel eventAPIModel = EventAPIModel.fromJson(jsonDecode(resp.body));
    eventAPIModel.registers.add('abcd');
    final response = await http.post(
      Uri.parse('https://uptodatebackend.herokuapp.com/event/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: <String, String>{
        'uid':'abcd',
        'eid':eventId
      },
    );
    print('event added');
  }
  // Event buildEvent({Recurrence? recurrence}) {
  //   return Event(
  //     title: 'Test eventeee',
  //     description: 'example',
  //     location: 'Flutter app',
  //     startDate: DateTime.now(),
  //     endDate: DateTime.now().add(Duration(minutes: 30)),
  //     allDay: false,
  //     iosParams: IOSParams(
  //       reminder: Duration(minutes: 40),
  //     ),
  //     androidParams: AndroidParams(
  //       emailInvites: ["test@example.com"],
  //     ),
  //     recurrence: recurrence,
  //   );
  // }
}