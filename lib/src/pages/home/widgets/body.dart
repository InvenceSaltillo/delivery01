import 'package:delivery01/src/constants.dart';
import 'package:delivery01/src/pages/home/widgets/product_card.dart';
import 'package:delivery01/src/pages/home/widgets/textfield_search.dart';
import 'package:delivery01/src/pages/product_detail_page/product_detail_page.dart';
import 'package:delivery01/src/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'custom_appbar.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(),
                Column(
                  children: [
                    TextFieldSearch(),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Categorías',
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Ofertas',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Categories(),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Pizzas',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ProductCard(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ProductDetailPage(),
                                  ),
                                );
                              },
                              image: 'assets/images/pizzaVeloper.svg',
                              price: 120.99,
                              disccount: 32,
                              description:
                                  'Eu consequat incididunt ex enim sint qui.',
                              title: 'Pizza veloper',
                            ),
                            ProductCard(
                              onTap: () {},
                              image: 'assets/images/pizzaVeloper.svg',
                              price: 70,
                              description:
                                  'Lorem ipsum dolor sit amet, consetetur',
                              title: 'Pizza Cantos',
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Hamburguesas',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ProductCard(
                              onTap: () {},
                              image: 'assets/images/029-burger.svg',
                              price: 120.99,
                              disccount: 32,
                              description:
                                  'Eu consequat incididunt ex enim sint qui.',
                              title: 'Burguer miau',
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          BottomBar(
            itemCount: 5,
            text: 'Mi cesta',
            total: 125.55,
          ),
        ],
      ),
    );
  }
}
