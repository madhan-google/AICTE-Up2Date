import 'package:flutter/material.dart';
import 'package:aicte_up2date/Activities/LoginActivity.dart';
import 'package:aicte_up2date/Activities/RegistrationActivity.dart';
void main(){
  runApp(MainApp());
}
class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationActivity(),
    );
  }

}