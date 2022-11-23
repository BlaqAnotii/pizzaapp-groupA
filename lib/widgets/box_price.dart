import 'package:flutter/material.dart';

import 'package:pizzaapp/Utility/box_picture.dart';
import 'package:pizzaapp/Utility/box_text.dart';
import 'package:pizzaapp/widgets/button_widget.dart';

class BoxPrice extends StatefulWidget {
  const BoxPrice({super.key});

  @override
  State<BoxPrice> createState() => _BoxPriceState();
}

class _BoxPriceState extends State<BoxPrice> {
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
          Padding(
            padding: const EdgeInsets.only(left: 130),
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromARGB(255, 234, 230, 223)),
              padding: const EdgeInsets.all(2.0),
              child: const Icon(Icons.favorite_outline),
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
