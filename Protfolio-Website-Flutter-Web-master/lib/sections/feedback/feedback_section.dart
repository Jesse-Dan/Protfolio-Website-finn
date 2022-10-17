import 'package:finn_jesse/components/section_title.dart';
import 'package:finn_jesse/constants.dart';
import 'package:finn_jesse/models/Feedback.dart';
import 'package:flutter/material.dart';
import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "Feedback Received",
            subTitle: "Client\'s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  feedbacks.length,
                  (index) => FeedbackCard(
                    index: index,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
