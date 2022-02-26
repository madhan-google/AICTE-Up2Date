import 'package:aicte_up2date/Widgets/BoxShadowWidget.dart';
import 'package:animated_button/animated_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aicte_up2date/GlobalVariable.dart';

class RegistrationActivity extends StatefulWidget{
  const RegistrationActivity({Key? key}) : super(key: key);

  @override
  State<RegistrationActivity> createState() => _RegistrationActivity();
}
class _RegistrationActivity extends State<RegistrationActivity>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/bg.jpg',fit: BoxFit.fill,),
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
            child: Container(
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
                      child: _TextField_Decoration(TextEditingController(), 'Name'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      // height: 70,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      decoration: _Neumorphism(),
                      child: _TextField_Decoration(TextEditingController(), 'Mail Id'),
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
                              child: _TextField_Decoration(TextEditingController(), 'Date Of Birth')
                          ),
                          const Expanded(
                            flex: -1,
                            child: Icon(Icons.date_range),
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
                      child: _TextField_Decoration(TextEditingController(), 'Age'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(TextEditingController(), 'Gender'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(TextEditingController(), 'College Name'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(TextEditingController(), 'Department'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(TextEditingController(), 'Roll Number'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(TextEditingController(), 'Phone Number'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(TextEditingController(), 'City'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(TextEditingController(), 'State'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(TextEditingController(), 'New Password'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    Container(
                      decoration: _Neumorphism(),
                      padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
                      margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
                      child: _TextField_Decoration(TextEditingController(), 'Confirm Password'),
                    ),
                    SizedBox(height: GlobalVariable.SIZED_BOX_HEIGHT,),
                    AnimatedButton(
                      child: const Text(
                        'Submit',
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