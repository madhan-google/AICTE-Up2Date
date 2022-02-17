import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginActivity extends StatefulWidget{
  @override
  State<LoginActivity> createState() => _LoginActivity();
}
class _LoginActivity extends State<LoginActivity>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: const Icon(Icons.date_range),
          ),
        ],
      )
    );
  }

}