import 'package:delivery01/src/pages/product_detail_page/widgets/card_cart.dart';
import 'package:delivery01/src/widgets/circular_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'categories_cart.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
    @required this.text,
    @required this.itemCount,
    @required this.total,
  }) : super(key: key);

  final String text;
  final int itemCount;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: InkWell(
          onTap: () {
            displayBottomSheet(context);
          },
          child: Container(
            width: double.infinity,
            height: 60,
            padding: EdgeInsets.only(left: 20, right: 30),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 33,
                  height: 33,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    '$itemCount',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  this.text,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: 2,
                  height: 25,
                  color: Colors.white,
                ),
                Text(
                  '\$${total.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void displayBottomSheet(BuildContext context) {
  List<Map<String, dynamic>> categories = [
    {
      "icon": "assets/images/029-burger.svg",
      "text": "Burguer",
      "color": Color(0xffCAE9F7)
    },
    {
      "icon": "assets/images/Grupo 2759.svg",
      "text": "Carne",
      "color": Color(0xffCAF7D6)
    },
    {
      "icon": "assets/images/013-sandwich.svg",
      "text": "Postres",
      "color": Color(0xffF7D0CA)
    },
    {
      "icon": "assets/images/024-soup.svg",
      "text": "Sopas",
      "color": Color(0xffF1ECCA)
    },
    {
      "icon": "assets/images/007-pizza.svg",
      "text": "Pollo",
      "color": Color(0xffCCCAF1)
    },
    {
      "icon": "assets/images/016-barbecue.svg",
      "text": "Brocheta",
      "color": Color(0xffCAE9F7)
    },
  ];
  final size = MediaQuery.of(context).size;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    builder: (ctx) {
      return Container(
        height: size.height * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 30),
                      child: CircularButton(
                        icon: Icon(
                          Icons.clear,
                          color: Colors.white,
                          size: 18,
                        ),
                        color: kTextColor,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Image.asset(
                        'assets/icons/shopping-cart.png',
                        width: 25,
                        height: 25,
                        color: kSecondaryColor,
                      ),
                    ),
                    Text(
                      'Tu canasta',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: kTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                CartCard(
                  image: 'assets/images/platilloExample1.png',
                  title: 'Platillo Example 1',
                  price: 155.55,
                  qty: 5,
                ),
                CartCard(
                  image: 'assets/images/platilloExample2.png',
                  title: 'Platillo Example 2',
                  price: 89.99,
                  qty: 5,
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'Busca algo más',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: kTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: CategoriesCart(categories: categories),
                ),
                SizedBox(height: 90),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Total a cobrar',
                          style: TextStyle(
                            fontSize: 16,
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          'pago con tarjeta',
                          style: TextStyle(
                            fontSize: 13,
                            color: kTextColor.withOpacity(.5),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 60),
                    Text(
                      '\$85.00',
                      style: TextStyle(
                        fontSize: 18,
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                BottomBar(
                  text: 'Ir a pagar',
                  itemCount: 6,
                  total: 59.99,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
