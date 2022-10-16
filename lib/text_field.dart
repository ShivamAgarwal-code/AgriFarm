import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTextField extends StatefulWidget {
  final String title;
  final Function onChanged;
  final Function onSaved;
  final bool obscureText;

  const MyTextField({
    Key key,
    @required this.title,
    this.onChanged,
    this.onSaved,
    this.obscureText,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${widget.title}',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            suffixIcon: widget.obscureText ?? false ? IconButton(
              icon: Icon(
                obscureText ? FontAwesomeIcons.solidEye : FontAwesomeIcons.solidEyeSlash,
                size: 20.0,
              ),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            ) : null,
          ),
          obscureText: obscureText,
          onSaved: widget.onSaved,
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}
