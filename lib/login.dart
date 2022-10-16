import 'package:flutter/material.dart';
import 'package:hh/button.dart';
import 'package:hh/register.dart';
import 'package:hh/text_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/carrot.jpeg',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  'ENTER YOUR EMAIL AND PASSWORD',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                MyTextField(
                  title: 'Email',
                ),
                SizedBox(
                  height: 28.0,
                ),
                MyTextField(
                  title: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 16.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?'),
                ),
                SizedBox(
                  height: 32.0,
                ),
                MyElevatedButton(
                  'Log In',
                  action: () {},
                ),
                SizedBox(
                  height: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => RegisterScreen()));
                      },
                      child: Text(
                        'Signup',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
