import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';

class Home_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'A-eye',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Navigate to settings page
              },
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF6B5B95),
                  Color(0xFF8E7CC3),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          elevation: 8.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 24.0),
                    children: [
                      TextSpan(
                        text: 'Welcome to ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'A-eye!',
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Making everyday life easier for the visually impaired.',
                  style: TextStyle(fontSize: 16.0),
                ),

                SizedBox(height: 40.0),
                _buildFeatureButton(context, 'OCR', Icons.text_fields, Colors.blue),
                _buildFeatureButton(context, 'Currency Recognition', FontAwesomeIcons.dollarSign, Colors.green),
                _buildFeatureButton(context, 'Face Recognition', FontAwesomeIcons.user, Colors.orange),
                _buildFeatureButton(context, 'Obstacle Detection', FontAwesomeIcons.walking, Colors.red),
                _buildFeatureButton(context, 'Color Detection', Icons.color_lens, Colors.purple),
                _buildFeatureButton(context, 'Guide Panel', Icons.history, Colors.teal),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          onTap: (index) {
            // Handle navigation based on the tapped item index
          },
          elevation: 8.0,
        ),
      ),
    );
  }

  Widget _buildFeatureButton(BuildContext context, String title, IconData icon, Color color) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[color.withOpacity(0.7), color],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    return InkWell(
      onTap: () {
        // Navigate to the respective feature page
      },
      splashColor: color.withOpacity(0.2),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(icon, color: color, size: 40.0),
                SizedBox(width: 20.0),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
