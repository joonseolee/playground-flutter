import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recommend_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            prress: () {},
          ),
          RecommendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", prress: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding / 4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ),
            )
          ],
        ));
  }
}
