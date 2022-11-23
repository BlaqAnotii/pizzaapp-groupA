import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    required this.buttonText,
    this.textColor,
    this.buttonColor,
    required this.onTap,
    this.buttonMarginL,
    this.buttonMarginR,
    this.buttonMarginT,
    this.buttonMarginB,
    required this.borderRadius,
    this.buttonheight,
    Key? key,
  }) : super(key: key);
  final String buttonText;
  final VoidCallback onTap;
  Color? buttonColor;
  Color? textColor;
  double? buttonMarginL;
  double? buttonMarginR;
  double? buttonMarginT;
  double? buttonMarginB;
  double? borderRadius;
  double? buttonheight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonheight ?? 50,
      decoration: BoxDecoration(
          color: buttonColor ?? const Color.fromARGB(255, 255, 162, 0),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 0))),
      margin: EdgeInsets.only(
          left: buttonMarginL ?? 20,
          right: buttonMarginR ?? 20,
          top: buttonMarginT ?? 0,
          bottom: buttonMarginB ?? 0),
      width: double.infinity,
      child: TextButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(color: buttonColor ?? Colors.black),
          )),
    );
  }
}
