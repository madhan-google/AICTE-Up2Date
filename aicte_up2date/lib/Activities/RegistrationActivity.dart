import 'dart:convert';

import 'package:aicte_up2date/Models/UserFields.dart';
import 'package:aicte_up2date/Widgets/BoxShadowWidget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:aicte_up2date/GlobalVariable.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_group_button/flutter_group_button.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:motion_toast/motion_toast.dart';


class RegistrationActivity extends StatefulWidget{
  const RegistrationActivity({Key? key}) : super(key: key);

  @override
  State<RegistrationActivity> createState() => _RegistrationActivity();
}
enum _radio_enum {Male, Female, others, main_enum}
class _RegistrationActivity extends State<RegistrationActivity>{
  var dateText = _controller();
  var nameText = _controller();
  var ageText = _controller();
  var mailIdText = _controller();
  var dobText = _controller();
  // var genderText = _controller();
  var collegeText = _controller();
  var deptText = _controller();
  var cityText = _controller();
  var stateText = _controller();
  var passText = _controller();
  var cPassText = _controller();
  var rollNoText = _controller();
  var phNoText = _controller();
  // var userType = _controller();
  
  late UserFields userFields;
  String select_date ='';
  String _gender = '';
  String user_type = '';
  static String userId = '';

  DateTime curDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            pinned: true,
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/bg.jpg',fit: BoxFit.cover,),
              title: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                      'Register here',
                      speed: const Duration(milliseconds: 200),
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white
                      )
                  )
                ],
                totalRepeatCount: 10,
                stopPauseOnTap: true,
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      // height: 70,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      decoration: _Neumorphism(),
                      child: _TextField_Decoration(nameText, 'Name'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      // height: 70,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      decoration: _Neumorphism(),
                      child: _TextField_Decoration(mailIdText, 'Mail Id'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              flex: 6,
                              child: _TextField_Decoration(dateText, 'Date Of Birth')
                          ),
                          Expanded(
                            flex: -1,
                            child: IconButton(icon: const Icon(Icons.date_range), onPressed: () => _selectDate(context)),
                          )
                        ],
                      ),
                    ),
                    // 4 5 3 7 1
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(ageText, 'Age'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: RadioGroup(
                        textBeforeRadio: true,
                        priority: RadioPriority.textBeforeRadio,
                        mainAxisAlignment: MainAxisAlignment.start,
                        // internMainAxisAlignment: MainAxisAlignment.center,
                        // margin: const EdgeInsets.all(10),
                        children: const [
                          Expanded(
                            child: Text('Male'),
                            flex: 1,),
                          Expanded(child: Text('Female'),flex: 1,),
                          Expanded(child: Text('Others'),flex: 1,)
                        ],
                        defaultSelectedItem: -1,
                        onSelectionChanged: (index){
                          setState(() {
                            if(index==0) _gender = 'Male';
                            else if(index==1) _gender = 'Female';
                            else _gender = 'Others';
                          });
                        },
                      ),
                      // child: _TextField_Decoration(genderText, 'Gender'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(collegeText, 'College Name'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(deptText, 'Department'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      // child: _TextField_Decoration(userType, 'Student or Staff'),
                      child: RadioGroup(
                        textBeforeRadio: true,
                        priority: RadioPriority.textBeforeRadio,
                        mainAxisAlignment: MainAxisAlignment.start,
                        // internMainAxisAlignment: MainAxisAlignment.center,
                        // margin: const EdgeInsets.all(10),
                        children: [
                          Container(
                            child: const Text('Student'),
                            margin: const EdgeInsets.all(10),),
                          Container(child: const Text('Staff'),margin: const EdgeInsets.all(10),),
                          // Container(child: Text('Others'),margin: const EdgeInsets.all(10),)
                        ],
                        defaultSelectedItem: -1,
                        onSelectionChanged: (index){
                          setState(() {
                            if(index==0) user_type = 'Student';
                            else if(index==1) user_type = 'Staff';
                          });
                        },
                      ),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(rollNoText, 'Roll Number'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(phNoText, 'Phone Number'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(cityText, 'City'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(stateText, 'State'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(passText, 'New Password'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(cPassText, 'Confirm Password'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      child: ArgonButton(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.45,
                        onTap: (start, stop, btnState) {
                          _RegistrationProcess();
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        loader: LoadingAnimationWidget.bouncingBall(color: Colors.pinkAccent, size: 200),
                        borderRadius: 5.0,
                        color: const Color(0xFF7866FE),
                      ),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  // var dateText = _controller();
  // var nameText = _controller();
  // var ageText = _controller();
  // var mailIdText = _controller();
  // var dobText = _controller();
  // var genderText = _controller();
  // var collegeText = _controller();
  // var deptText = _controller();
  // var cityText = _controller();
  // var stateText = _controller();
  // var passText = _controller();
  // var cPassText = _controller();
  // var rollNoText = _controller();
  // var phNoText = _controller();
  void _RegistrationProcess() async{
    print('response');
    authenticateToFirebase();
    print(nameText.text);
    if(ok(dateText.text)&&ok(nameText.text)&&ok(ageText.text)&&ok(mailIdText.text)&&ok(select_date)&&ok(_gender)&&ok(collegeText.text)&&ok(deptText.text)
        &&ok(cityText.text)&&ok(stateText.text)&&ok(passText.text)&&ok(cPassText.text)&&ok(rollNoText.text)&&ok(phNoText.text)&&ok(user_type)){
      if(passText.text==cPassText.text){
        userFields = UserFields(
            nameText.text,
            mailIdText.text,
            select_date,
            ageText.text,
            _gender,
            collegeText.text,
            deptText.text,
            rollNoText.text,
            cityText.text,
            stateText.text,
            phNoText.text,
            user_type,
            userId
        );
        final response = await http.post(
          Uri.parse('https://uptodatebackend.herokuapp.com/user/register'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(userFields.toJson(userFields)),
        );
        if(response.body.isNotEmpty){
          // authenticateToFirebase();
          showDialog('Registered Successfully', DialogType.SUCCES);
        }else{
          showDialog('Something Went Wrong', DialogType.ERROR);
        }
        print(response.body.length);
      }else{
        showToast('Password mismatch');
      }
    }else{
      // showDialog('Something Went Wrong', DialogType.ERROR);
      showToast('Kindly fill all the fields');
      print('false');
    }
  }

  void authenticateToFirebase() async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: mailIdText.text,
          password: passText.text
      );
      userId = userCredential.user!.uid;
      print('user id - $userId');
    } on FirebaseAuthException catch(e){
      print(e);
      showToast(e.code);
    }catch(e){
      print('catch $e');
    }
  }
  
  bool ok(String s) => s.isEmpty?false:true;

  void showToast(String text){
    MotionToast.info(description: Text(text, style: const TextStyle(fontFamily: 'Varela')), title: const Text('Info',),).show(context);
  }

  void showDialog(String text, DialogType type){
    AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dialogType: type,
      body: Center(child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0, ),
      ),),
      title: 'This is Ignored',
      desc:   'This is also Ignored',
      btnOkOnPress: () {

      },
    ).show();
  }

  static BoxDecoration _BoxShadow(){
    return BoxDecoration(
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
    );
  }

  static BoxDecoration _Neumorphism(){
    return BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
        boxShadow:  [
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

  Future<void> _selectDate(BuildContext context) async{
    final DateTime? picked = await showDatePicker(
      firstDate: DateTime(2001),
      lastDate: DateTime(2200),
      context: context,
      initialDate: curDate,
    );
    if(picked!=null){
      setState(() {
        curDate = picked;
        dateText.text=('${curDate.day} / ${curDate.month} / ${curDate.year}');
        select_date = ('${curDate.day}/${curDate.month}/${curDate.year}');
      });
    }
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

  static _controller(){
    return TextEditingController();
  }

}