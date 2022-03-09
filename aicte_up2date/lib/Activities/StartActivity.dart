import 'package:aicte_up2date/Activities/EventsActivity.dart';
import 'package:aicte_up2date/Activities/RegistrationActivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartActivity extends StatefulWidget{
  @override
  State<StartActivity> createState() => _StartActivity();
}
class _StartActivity extends State<StartActivity>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //check user is logged in or not
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegistrationActivity()),
        );
      } else {
        print('User is signed in!');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EventsActivity()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Start Activity'),),
      body: Center(
        child: Text("Logging in.."),
      ),
    );
  }

}