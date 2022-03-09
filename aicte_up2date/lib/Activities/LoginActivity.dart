import 'package:animated_button/animated_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GlobalVariable.dart';

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
        backgroundColor: Colors.black,
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.black
              ),
              alignment: Alignment.center,
              child: const Image(
                height: 150,
                width: 150,
                image: AssetImage('images/logo.png'),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: AnimatedTextKit(
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
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: _Neumorphism(),
              padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
              margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
              child: _TextField_Decoration(mail_id, 'mail id'),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: _Neumorphism(),
              padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
              margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
              child: _TextField_Decoration(password, 'password'),
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: AnimatedButton(
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
                onPressed: () {
                  signIn();
                },
                enabled: true,
                // duration: 1000,
                shadowDegree: ShadowDegree.light,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: const Text('Forgot the password'),
            ),
          ],
        ),
      )
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   // mainAxisSize: MainAxisSize.max,
      //   children: <Widget>[
      //     const SizedBox(height: 20,),
      //     const Image(
      //       height: 150,
      //       width: 150,
      //       image: AssetImage('images/logo.png'),
      //     ),
      //     const SizedBox(height: 10,),
      //     Expanded(
      //       flex: 1,
      //       child:Container(
      //         padding: const EdgeInsets.all(10),
      //         width: double.infinity,
      //         // height: 500,
      //         decoration: const BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
      //         ),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: <Widget>[
      //             AnimatedTextKit(
      //               animatedTexts: [
      //                 TypewriterAnimatedText(
      //                     'LOGIN',
      //                     textStyle: const TextStyle(
      //                         fontSize: 32.0,
      //                         fontWeight: FontWeight.bold,
      //                         color: Colors.pink
      //                     ),
      //                     speed: const Duration(milliseconds: 500)
      //                 )
      //               ],
      //               totalRepeatCount: 20,
      //               pause: const Duration(milliseconds: 100),
      //               stopPauseOnTap: true,
      //             ),
      //             const SizedBox(height:50),
      //             Container(
      //               decoration: _Neumorphism(),
      //               padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
      //               margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
      //               child: _TextField_Decoration(mail_id, 'mail id'),
      //             ),
      //             const SizedBox(height:50),
      //             Container(
      //               decoration: _Neumorphism(),
      //               padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
      //               margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
      //               child: _TextField_Decoration(password, 'password'),
      //             ),
      //             const SizedBox(height:35),
      //             AnimatedButton(
      //               child: const Text(
      //                 'Login',
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.w500,
      //                 ),
      //               ),
      //               height: 60,
      //               width: 150,
      //               color: Colors.green,
      //               onPressed: () {},
      //               enabled: true,
      //               // duration: 1000,
      //               shadowDegree: ShadowDegree.light,
      //             ),
      //             const SizedBox(height: 30),
      //             const Text(
      //               'Forget Password',
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
  void signIn() async{

  }
  static BoxDecoration _Neumorphism() {
    return BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 10,
            offset: const Offset(5, 5),
            // spreadRadius: 1
          ),
          const BoxShadow(
              color: Colors.white,
              blurRadius: 10,
              offset: Offset(-5, -5),
              spreadRadius: 4
          )
        ]
    );
  }
  static TextField _TextField_Decoration(TextEditingController controller, var label){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none
      ),
    );
  }

}