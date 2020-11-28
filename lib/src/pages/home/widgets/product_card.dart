import 'package:delivery01/src/pages/home/widgets/shopping_cart_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.disccount,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.image,
    @required this.onTap,
  }) : super(key: key);

  final String title, description, image;
  final double price;
  final int disccount;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: 112,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xff4A72A8).withOpacity(.2),
              blurRadius: 5,
              offset: Offset(0, 10),
            )
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      SvgPicture.asset(
                        image,
                        width: 69,
                        height: 69,
                      ),
                      if (disccount != null)
                        Positioned(
                          top: -5,
                          left: -5,
                          child: Container(
                            alignment: Alignment.center,
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Color(0xffEE3169),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              '$disccount%',
                              style: TextStyle(
                                fontSize: 7,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          description,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 8,
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          '\$${price..toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 15,
                            color: kSecondaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (disccount != null)
                          Text.rich(
                            TextSpan(
                              text: 'Antes ',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                TextSpan(
                                  text: '\$150.00',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ShoppingCartButton(onTap: onTap),
          ],
        ),
      ),
    );
  }
}
