import 'package:finn_jesse/components/section_title.dart';
import 'package:finn_jesse/constants.dart';
import 'package:finn_jesse/models/Service.dart';
import 'package:flutter/material.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    services.length, (index) => ServiceCard(index: index)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
