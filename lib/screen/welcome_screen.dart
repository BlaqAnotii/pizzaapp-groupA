import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pizzaapp/screen/home_screen.dart';

class ChefPizzaScreen extends StatefulWidget {
  const ChefPizzaScreen({super.key});

  @override
  State<ChefPizzaScreen> createState() => _ChefPizzaScreenState();
}

class _ChefPizzaScreenState extends State<ChefPizzaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 243, 237),
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    child: Container(
                      width: double.infinity,
                      height: 350,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 350,
                    margin: const EdgeInsets.only(top: 55),
                    child: Image.asset(
                      "assets/images/chef.png",
                      alignment: Alignment.center,
                    ),
                  ),
                  Positioned(
                      top: 53.9,
                      right: 20.9,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ));
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17.5,
                                color: Colors.black54),
                          ))),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 380),
                    child: const Image(
                      image: AssetImage("assets/images/fullpizza.png"),
                      height: 120,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 500, left: 132),
                    child: Text(
                      "Pizza for you",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 520, left: 110),
                        child: Icon(
                          Icons.bolt,
                          color: Colors.amber,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 520),
                        child: Text(
                          "Everyday new pizza\n eat fresh pizza",
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 570, left: 60),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 245, 211, 169),
                          ),
                        ),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(left: 60, right: 60),
                          child: Text(
                            "Sign up with Email",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55, top: 630),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        ),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(left: 60, right: 60),
                          child: Text(
                            "Sign up with Google",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
