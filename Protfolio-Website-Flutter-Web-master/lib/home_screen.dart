import 'dart:js';

import 'package:finn_jesse/constants.dart';
import 'package:finn_jesse/sections/about/about_section.dart';
import 'package:finn_jesse/sections/contact/contact_section.dart';
import 'package:finn_jesse/sections/feedback/feedback_section.dart';
import 'package:finn_jesse/sections/recent_work/recent_work_section.dart';
import 'package:finn_jesse/sections/service/service_section.dart';
import 'package:finn_jesse/sections/topSection/top_section.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scroll_to_top/flutter_scroll_to_top.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollWrapper(
        alwaysVisibleAtOffset: true,
        builder: (context, properties) => SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              TopSection(),
              AboutSection(),
              ServiceSection(),
              RecentWorkSection(),
              FeedbackSection(),
              SizedBox(height: kDefaultPadding),
              ContactSection(),
              // This SizeBox just for demo
              // SizedBox(
              //   height: 500,
              // )
            ],
          ),
        ),
        promptReplacementBuilder: (context, function) {
          
          return Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 80),
            child: FloatingActionButton(
              hoverColor: Colors.pink.shade300,
              onPressed: () {
                function();
              },
              child: Icon(Icons.arrow_upward),
            ),
          );
        },
      ),
    );
  }
}
