import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventModel extends StatefulWidget{
  @override
  State<EventModel> createState() => _EventModel();

}
class _EventModel extends State<EventModel>{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvXDuz5XhGdm7tHLwBWtMKELHA0SprS8WA5w&usqp=CAU',
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
        Text(
          'EVENT NAME',
          style: const TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            // fontFamily: 'Varela'
          )
        ),
        SizedBox(height: 5,),
        Row(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Stack(
            //   children: <Widget>[
            //     Positioned(
            //       left: 1,top: 2,
            //       child: CircleAvatar(foregroundColor: Colors.pinkAccent,),
            //     ),
            //     Positioned(
            //       left: 2,top: 2,
            //       child: CircleAvatar(foregroundColor: Colors.deepOrange,),
            //     ),
            //     Positioned(
            //       left: 3,top: 2,
            //       child: CircleAvatar(foregroundColor: Colors.yellow,),
            //     ),
            //   ],
            // ),
            const Text('Joined'),
            const Spacer(),
            ElevatedButton(
              onPressed: (){

              },
              child: Text('Join'),
            )
          ],
        )
      ],
    );
  }

}