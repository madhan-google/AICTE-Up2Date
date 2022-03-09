import 'package:aicte_up2date/Activities/EventsActivity.dart';
import 'package:aicte_up2date/Activities/ProfileActivity.dart';
import 'package:aicte_up2date/Activities/StartActivity.dart';
import 'package:aicte_up2date/Models/EventModel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:aicte_up2date/Activities/LoginActivity.dart';
import 'package:aicte_up2date/Activities/RegistrationActivity.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainApp());
}
class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      home: StartActivity(),
    );
  }

}