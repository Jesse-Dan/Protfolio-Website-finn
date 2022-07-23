import 'dart:ui';
import 'package:finn_jesse/constants.dart';
import 'package:flutter/material.dart';
import 'components/logo_blur_box.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            // Positioned(bottom: 30, right: 20, child: null
            // PersonPic(),
            // ),
            // Positioned(
            //   bottom: 0,
            //   child: Menu(),
            // ),
          ],
        ),
      ),
    );
  }
}
