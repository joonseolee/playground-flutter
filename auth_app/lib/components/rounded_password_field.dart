import 'package:auth_app/constants.dart';
import 'package:flutter/material.dart';

import 'text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            icon: Icon(Icons.lock, color: kPrimaryColor),
            suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
            border: InputBorder.none),
      ),
    );
  }
}
