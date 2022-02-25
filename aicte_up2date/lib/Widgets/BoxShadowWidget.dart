import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxShadowWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container();
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
}