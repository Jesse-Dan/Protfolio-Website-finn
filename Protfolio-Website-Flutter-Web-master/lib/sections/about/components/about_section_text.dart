import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // height: MediaQuery.of(context).size.height / 2,
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w400, color: kTextColor, height: 2),
      ),
    );
  }
}
