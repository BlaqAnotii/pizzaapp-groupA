import 'package:flutter/material.dart';

class PizzaImage extends StatelessWidget {
  final String nameImage;
  final double? radiusImage;
  final double? leftPadding;

  const PizzaImage(
      {this.leftPadding, required this.nameImage, this.radiusImage});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(leftPadding ?? 0, 0.0, 0.0, 0.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: radiusImage ?? 25,
          child: Image.asset('assets/images/$nameImage'),
        ),
      ),
    );
  }
}
