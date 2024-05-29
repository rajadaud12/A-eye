import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myproject/Screens/sign_in.dart';
import 'package:myproject/Screens/sign_up.dart';
import 'package:myproject/widget/custom_scaffold.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return custom_scaffold(
      child: Column(
        children: [
          SizedBox(height:250),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 40.0,
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome!\n',
                      style: TextStyle(
                        fontSize: 65.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'Be the first to try A-eye!',
                      style: TextStyle(
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 300,
                  height:40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signInScreen()),
                      );
                    },
                    child: Text('Log-In'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple, // background color
                      foregroundColor: Colors.white, // text color
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  height:40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text('Sign-Up'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple, // background color
                      foregroundColor: Colors.white, // text color
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
