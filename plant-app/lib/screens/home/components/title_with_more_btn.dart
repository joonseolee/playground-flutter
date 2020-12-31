import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'body.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.prress,
  }) : super(key: key);

  final String title;
  final Function prress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(
            text: title,
          ),
          Spacer(),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: kPrimaryColor,
              onPressed: prress,
              child: Text(
                "More",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
