import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "A little about \nFinn Jesse",
            style: Theme.of(context)
                .textTheme
                .headline3
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Image.asset("assets/images/sign.png")
        ],
      ),
    );
  }
}
