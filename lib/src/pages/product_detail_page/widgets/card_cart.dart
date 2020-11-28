import 'package:delivery01/src/widgets/circular_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.price,
    @required this.qty,
  }) : super(key: key);

  final String image, title;
  final double price;
  final int qty;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 80,
              height: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: kTextColor,
                  ),
                ),
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 17,
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircularButton(
                icon: Icon(Icons.add),
                color: Colors.white,
                onTap: () {},
              ),
              Text(
                '$qty',
                style: TextStyle(
                  fontSize: 18,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircularButton(
                icon: Icon(
                  Icons.remove,
                  color: kTextColor.withOpacity(.5),
                ),
                color: Colors.white,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
