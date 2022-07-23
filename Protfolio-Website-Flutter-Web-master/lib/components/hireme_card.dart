import 'package:flutter/material.dart';

import '../constants.dart';
import 'default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                "assets/images/email.png",
                height: 80,
                width: 80,
              ),
              SizedBox(
                height: 80,
                child: Divider(),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Starting New Project?",
                      style:
                          TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Get an estimate for the new project",
                      style: TextStyle(fontWeight: FontWeight.w200),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                  ],
                ),
              )
            ],
          ),
          DefaultButton(
            text: "Hire Me!",
            imageSrc: "assets/images/hand.png",
            press: () {},
          )
        ],
      ),
    );
  }
}
