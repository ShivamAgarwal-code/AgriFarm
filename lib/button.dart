import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton(
    this.title, {
    Key key,
    this.action,
  }) : super(key: key);

  final String title;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: action,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)))),
                padding: MaterialStateProperty.all(const EdgeInsets.all(20.0))),
          ),
        ),
      ],
    );
  }
}
