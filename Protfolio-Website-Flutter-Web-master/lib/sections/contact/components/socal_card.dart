import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocalCard extends StatefulWidget {
  const SocalCard({
    Key key,
    // this.iconSrc = null,
    this.name,
    this.color,
    this.press,
    this.icon,
    this.socialString,
  }) : super(key: key);

  // final String iconSrc;
  final String name;
  final String socialString;
  final IconData icon;
  final Color color;
  final Function press;

  @override
  _SocalCardState createState() => _SocalCardState();
}

class _SocalCardState extends State<SocalCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FittedBox(
        child: InkWell(
          onTap: widget.press,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding * 1.5,
            ),
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow],
            ),
            child: Row(
              children: [
                Icon(
                  widget.icon,
                  size: 70,
                  color: Colors.teal,
                  // height: 80,
                  // width: 80,
                ),
                SizedBox(width: kDefaultPadding),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.socialString,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(widget.name,
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
