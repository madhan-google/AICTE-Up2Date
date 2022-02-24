import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationActivity extends StatefulWidget{
  const RegistrationActivity({Key? key}) : super(key: key);

  @override
  State<RegistrationActivity> createState() => _RegistrationActivity();
}
class _RegistrationActivity extends State<RegistrationActivity>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                      'Register here',
                      speed: const Duration(milliseconds: 200),
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0,
                          color: Colors.cyan
                      )
                  )
                ],
                totalRepeatCount: 10,
                stopPauseOnTap: true,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              // height: 70,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 30,top: 10, bottom: 10, right: 20),
              margin: const EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(20),),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        5.0,
                        10.0,
                      ),
                      blurRadius: 20.0,
                      // spreadRadius: 2.0,
                    ),
                  ]
              ),
              child: TextField(
                // controller: mail_id,
                decoration: const InputDecoration(
                    labelText: 'Name',
                    border: InputBorder.none
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              // height: 70,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 30,top: 10, bottom: 10, right: 20),
              margin: const EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(20),),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        5.0,
                        10.0,
                      ),
                      blurRadius: 20.0,
                      // spreadRadius: 2.0,
                    ),
                  ]
              ),
              child: TextField(
                // controller: mail_id,
                decoration: const InputDecoration(
                    labelText: 'Mail Id',
                    border: InputBorder.none
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}