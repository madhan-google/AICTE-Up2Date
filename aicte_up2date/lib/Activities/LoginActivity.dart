import 'package:animated_button/animated_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginActivity extends StatefulWidget{
  const LoginActivity({Key? key}) : super(key: key);

  @override
  State<LoginActivity> createState() => _LoginActivity();
}
class _LoginActivity extends State<LoginActivity>{
  var mail_id = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const SizedBox(height: 20,),
            const Image(
              height: 150,
              width: 150,
              image: AssetImage('images/logo.png'),
            ),
            const SizedBox(height: 10,),
            Expanded(
              flex: 1,
              child:Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                // height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                            'LOGIN',
                            textStyle: const TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink
                            ),
                            speed: const Duration(milliseconds: 500)
                        )
                      ],
                      totalRepeatCount: 20,
                      pause: const Duration(milliseconds: 100),
                      stopPauseOnTap: true,
                    ),
                    const SizedBox(height:50),
                    Container(
                      // height: 70,
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 30,top: 10, bottom: 10, right: 20),
                      margin: const EdgeInsets.only(right: 50, left: 50),
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
                        controller: mail_id,
                        decoration: const InputDecoration(
                            labelText: 'Mail Id',
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    const SizedBox(height:50),
                    Container(
                      padding: const EdgeInsets.only(left: 30,top: 10, bottom: 10, right: 20),
                      margin: const EdgeInsets.only(right: 50, left: 50),
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
                        controller: password,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height:35),
                    AnimatedButton(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      height: 60,
                      width: 150,
                      color: Colors.green,
                      onPressed: () {},
                      enabled: true,
                      // duration: 1000,
                      shadowDegree: ShadowDegree.light,
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Forget Password',
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}