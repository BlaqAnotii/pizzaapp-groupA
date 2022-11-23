import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText({super.key, required this.bigText});
  final String bigText;
  @override
  Widget build(BuildContext context) {
    return Text(
      bigText,
      style: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText({super.key, required this.smallText});
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return Text(
      smallText,
      style: const TextStyle(
          fontSize: 10, fontWeight: FontWeight.w300, color: Colors.black),
    );
  }
}
