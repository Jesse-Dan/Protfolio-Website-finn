import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Column(
            children: [
              Image.asset('assets/images/notfound.png'),
              // Text('We Apologise!',
              //     style: TextStyle(color: Colors.white, fontSize: 50)),
              // Text('Not Found',
              //     style: TextStyle(color: Colors.black, fontSize: 50))
            ],
          ),
        ),
      ),
    );
  }
}
