import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      child: Image.asset('assets/images/person.png'),
    );
  }
}
