import 'package:flutter/material.dart';

import 'package:pizzaapp/Utility/box_picture.dart';
import 'package:pizzaapp/Utility/box_text.dart';
import 'package:pizzaapp/widgets/button_widget.dart';

class Box4 extends StatefulWidget {
  const Box4({super.key});

  @override
  State<Box4> createState() => _Box4State();
}

class _Box4State extends State<Box4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      clipBehavior: Clip.none,
      child: Stack(
        children: [
          Container(),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            height: 200,
            width: 174,
            decoration: const BoxDecoration(
                color: Color.fromARGB(234, 233, 230, 223),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BigText(bigText: 'Pepperoni Pizza'),
                  Expanded(
                    child: Row(
                      children: const [
                        SmallText(smallText: '⚡️\n\n'),
                        SmallText(
                            smallText:
                                'Pepperoni pizza, Margarita \nPizza Margherita Italian \ncuisine Tomato'),
                      ],
                    ),
                  ),
                  const BigText(bigText: '29'),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 174,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: const Color.fromARGB(255, 224, 224, 224),
              child:
                  Container(child: const PizzaImage(nameImage: 'pizza1.png')),
            ),
          ),
          ButtonWidget(
              buttonheight: 40,
              buttonMarginT: 205,
              buttonMarginL: 40,
              buttonMarginR: 40,
              buttonText: 'Order Now',
              onTap: () {},
              borderRadius: 30)
        ],
      ),
    );
  }
}
