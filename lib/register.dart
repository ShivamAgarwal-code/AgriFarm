import 'package:flutter/material.dart';
import 'package:hh/text_field.dart';
import 'package:hh/login.dart';

class RegisterScreen extends StatelessWidget {
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
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  'ENTER YOUR CREDENTIALS TO CONTINUE',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                MyTextField(
                  title: 'Username',
                ),
                SizedBox(
                  height: 28.0,
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
                  alignment: Alignment.center,
                  child: Text('BY CONTINUING YOU AGREE TO OUR '),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0)))),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(20.0))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginScreen()));
                      },
                      child: Text(
                        'Login',
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
