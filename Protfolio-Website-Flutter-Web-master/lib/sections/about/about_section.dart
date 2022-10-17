import 'package:finn_jesse/components/comming_soon.dart';
import 'package:finn_jesse/components/default_button.dart';
import 'package:finn_jesse/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Divider(
            color: Colors.black,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AboutTextWithSign(),
                  ExperienceCard(numOfExp: "03"),
                ],
              ),
            ),
          ),
          AboutSectionText(
            text:
                '''I Jesse Dan, A flutter developer With three Years of industrial experience. When I started this Jounery, i desires to be known not just as a developer but as one with extreme   ''',
          ),
          Divider(
            // height: 20,
            color: Colors.black,
          ),
          SizedBox(height: kDefaultPadding * 3),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultButton(
                      imageSrc: "assets/images/hand.png",
                      text: "Hire Me!",
                      press: () {
                        launchUrl(Uri.parse(
                            "whatsapp://send?phone=+2349068814392&text=From Project Inquriry "));
                        //   navigator(
                        // context,
                        // SendMessageView(),
                      },
                    ),
                    SizedBox(width: kDefaultPadding * 1.5),
                    DefaultButton(
                      imageSrc: "assets/images/download.png",
                      text: "Download CV",
                      press: () {
                        navigator(context, ComingSoon());
                        // );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  navigator(__, Widget route) {
    Navigator.push(
      __,
      MaterialPageRoute(builder: (__) => route),
    );
  }
}
