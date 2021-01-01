import 'package:auth_app/constants.dart';
import 'package:flutter/material.dart';

class OrDivier extends StatelessWidget {
  const OrDivier({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
        child: Divider(
      color: Color(0xFFD9D9D9),
      height: 1.5,
    ));
  }
}
