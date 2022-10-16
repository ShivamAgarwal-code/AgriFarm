import 'package:flutter/material.dart';
import 'package:hh/button.dart';
import 'package:hh/login.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/men.jpeg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text(
                  'Join the most secured Contract Farming experience',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'As per The Farmers’ Produce Trade and Commerce (Promotion and Facilitation) Bill, 2020; The Farmers (Empowerment and Protection) Agreement of Price Assurance and Farm Services Bill, 2020 and The Essential Commodities (Amendment) Bill, 2020.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16.0,
                ),
                MyElevatedButton(
                  'Get Started',
                  action: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                ),
              ],
            ),
            Container(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
