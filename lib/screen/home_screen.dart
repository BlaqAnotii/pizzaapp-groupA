import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:pizzaapp/screen/order_screen.dart';
import 'package:pizzaapp/widgets/box2.dart';
import 'package:pizzaapp/widgets/box3.dart';
import 'package:pizzaapp/widgets/box_price.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image(image: AssetImage('assets/images/Logo.png')),
        ),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Color.fromARGB(255, 255, 114, 34),
              ),
              const Text(
                'Cairo,',
                style: TextStyle(fontSize: 15),
              ),
              Image.asset(
                'assets/images/YE.png',
                scale: 20,
              ),
              const Icon(Icons.expand_more)
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, bottom: 10),
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Color.fromARGB(255, 234, 230, 223)),
              padding: const EdgeInsets.all(2.0),
              child: const Icon(Icons.favorite_outline_sharp),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              clipBehavior: Clip.none,
              child: Stack(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 25, 50, 2),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(150, 235, 215, 179),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: double.infinity,
                  height: 120,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 25, 30, 2),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(100, 238, 204, 145),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: double.infinity,
                  height: 115,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 25, 20, 2),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 234, 230, 223),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: double.infinity,
                  height: 110,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            '🔥Eat Fresh Pizza',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      const Gap(3),
                      Row(
                        children: const [
                          Text(
                            '⚡️Fast Delivery',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w200),
                          )
                        ],
                      ),
                      const Gap(3),
                      Row(
                        children: const [
                          Text(
                            '✨Near For You',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w200),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0, left: 240),
                  clipBehavior: Clip.none,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Image.asset(
                      'assets/images/face.png',
                      scale: 0.99,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 200),
                  clipBehavior: Clip.none,
                  child: Image.asset(
                    'assets/images/Tomato.png',
                    scale: 1,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 90, left: 170),
                  clipBehavior: Clip.none,
                  child: Image.asset(
                    'assets/images/Shallo.png',
                    scale: 1,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 70, left: 220),
                  clipBehavior: Clip.none,
                  child: Image.asset(
                    'assets/images/Basi.png',
                    scale: 1,
                  ),
                ),
              ]),
            ),
            const Gap(20),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 46,
              width: double.infinity,
              clipBehavior: Clip.none,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 234, 230, 223),
                      hintText: 'Search for favorite Pizza',
                      hintStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/search.png',
                          scale: 5,
                        ),
                      ),
                    )),
                  ),
                  const Gap(20),
                  Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 234, 230, 223),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Filt.png'))),
                ],
              ),
            ),
            const Gap(20),
            Container(
              clipBehavior: Clip.none,
              // padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Text(
                                  'Pizza',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                                Icon(
                                  Icons.expand_more,
                                  color: Colors.black,
                                )
                              ],
                            )),
                      ),
                      const BoxPrice(),
                      const Box3()
                    ],
                  ),
                  const Gap(10),
                  Column(
                    children: const [
                      Box2(),
                      Box3(),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 70, right: 35),
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(0, 244, 67, 54)),
          child: Stack(
            children: [
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(0, 146, 58, 52)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 2, bottom: 2),
                child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.home,
                            color: Colors.orange,
                          ),
                        )),
                        const Gap(70),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PizzaScreen()));
                            },
                            icon: const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Icon(Icons.shopping_cart_outlined),
                            ))
                      ],
                    )),
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.only(left: 100, top: 10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromARGB(255, 255, 255, 255)),
                  child: const Icon(Icons.qr_code_scanner_sharp)),
            ],
          ),
        ),
      ),
    );
  }
}
