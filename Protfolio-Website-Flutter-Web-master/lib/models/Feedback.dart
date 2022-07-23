import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;
  final String personsFeedback;

  Feedback(
      {this.personsFeedback,
      this.name,
      this.review,
      this.userPic,
      this.id,
      this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Akalazu David",
    review: 'i\'m so satisfied with the work you have done for me ',
    userPic: "assets/images/people.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Sir. Febechukwu Mitchel",
    review:
        'I would make sure to make reference to about your work to my friends and family',
    userPic: "assets/images/people.png",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Lawrence Segun",
    review:
        'Your Level of professionalism is so high, i doubt you can ever have an unsatisfied costumer ',
    userPic: "assets/images/people.png",
    color: Color(0xFFFFE0E0),
  ),
];

String review =
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';
