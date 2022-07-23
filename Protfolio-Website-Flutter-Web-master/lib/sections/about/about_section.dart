import 'package:finn_jesse/components/comming_soon.dart';
import 'package:finn_jesse/components/default_button.dart';
import 'package:finn_jesse/constants.dart';
import 'package:flutter/material.dart';
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
                'Jesse Dan is one of Nigeian\'s most well-known and well-respected Develpers. A veteran of the Digital World. Jesse has been a star of the stage and screen for over three years and continues to use his public profile for good. As the man behind the iconic Okoko Dev Fest, Jesse admired internationally for his charity work, as much as his  Job as a Developer. Now, aiming to change the conversation surrounding inclusion, Jesse is a leading speaker on the challenges and solutions faced by a lack of diversity.Having spent more than 3 years in the spotlight, Jesse\'s Work is popular across generations and continents. His earliest work on Arewa Commminity Web app for three years led to the opening of his own firm Cursor INC. in 2021 ',
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
