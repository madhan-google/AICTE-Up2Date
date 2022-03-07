import 'package:aicte_up2date/GlobalVariable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ProfileActivity extends StatefulWidget{
  @override
  State<ProfileActivity> createState() => _ProfileActivity();
  
}

class _ProfileActivity extends State<ProfileActivity>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 100,
              child: const CircleAvatar(
                foregroundImage: NetworkImage("https://images7.alphacoders.com/303/thumbbig-303042.webp"),
                // foregroundColor: Colors.yellowAccent,
                // radius: BorderRadius.circular(20.0),
              ),
            ),
            SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
            Container(
              // margin: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN, ),
              margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
              padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
              child: const Text(
                'Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}