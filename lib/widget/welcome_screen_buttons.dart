import 'package:flutter/material.dart';
import 'package:myproject/Screens/sign_up.dart';

class welcome_screen_button extends StatelessWidget {
  const welcome_screen_button({super.key, this.buttonText, this.onTap, this.textColor});
  final String? buttonText;
  final Widget? onTap;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (e)=>onTap!,),);
      },
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
          )
        ),
          child:Text(buttonText!,
            textAlign: TextAlign.center,

            style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
              color: textColor,
            ),

          )
      ),
    );
  }
}

