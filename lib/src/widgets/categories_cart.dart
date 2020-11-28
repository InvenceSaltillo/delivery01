import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class CategoriesCart extends StatelessWidget {
  const CategoriesCart({
    Key key,
    @required this.categories,
  }) : super(key: key);

  final List<Map<String, dynamic>> categories;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        categories.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  color: categories[index]['color'],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 27,
                      height: 26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            offset: Offset(0, 7),
                            spreadRadius: 5,
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      categories[index]['icon'],
                      height: 32,
                      width: 32,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                categories[index]['text'],
                style: TextStyle(
                  fontSize: 12,
                  color: kTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
