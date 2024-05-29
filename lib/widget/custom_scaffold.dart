import 'package:flutter/material.dart';

class custom_scaffold extends StatelessWidget {
  const custom_scaffold({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,),
      extendBodyBehindAppBar: true,

      body: Stack(
        children: [
          Image.asset('assets/images/welcomepageimage.jpg',
              fit: BoxFit.cover, // Ensures the image covers the whole screen
              width: double.infinity, // Full width
              height: double.infinity),
          SafeArea(
              child: child!)
        ],
      ),
    );
  }
}