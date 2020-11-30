import 'package:delivery01/src/providers/categories_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Categories extends StatelessWidget {
  List<Map<String, dynamic>> categories = [
    {"icon": "assets/images/007-pizza.svg", "text": "Pizzas"},
    {"icon": "assets/images/029-burger.svg", "text": "Burguer"},
    {"icon": "assets/images/013-sandwich.svg", "text": "Sandwich"},
    {"icon": "assets/images/010-breakfast.svg", "text": "Desayuno"},
    {"icon": "assets/images/016-barbecue.svg", "text": "Brocheta"},
    {"icon": "assets/images/024-soup.svg", "text": "Sopas"},
  ];
  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoriesProvider>(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]['icon'],
            text: categories[index]['text'],
            selected: false,
            press: () =>
                categoryProvider.categoryName = categories[index]['text'],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String icon, text;
  final GestureTapCallback press;
  final bool selected;
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press(),
    this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _categoryName = Provider.of<CategoriesProvider>(context).categoryName;

    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: SizedBox(
          width: 61,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              AnimatedContainer(
                padding: EdgeInsets.all(1.5),
                width: 82.19,
                height: 77.19,
                decoration: BoxDecoration(
                  color:
                      _categoryName == this.text ? kPrimaryColor : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                duration: Duration(milliseconds: 200),
                curve: Curves.easeIn,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
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
                              ]),
                        ),
                        SvgPicture.asset(
                          this.icon,
                          width: _categoryName == this.text ? 33.9 : 23.67,
                          height: _categoryName == this.text ? 29.39 : 23.67,
                        ),
                      ],
                    ),
                    Text(
                      this.text,
                      style: TextStyle(
                        fontSize: _categoryName == this.text ? 10 : 8,
                        color: _categoryName == this.text
                            ? Colors.white
                            : kTextColor.withOpacity(.45),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              if (_categoryName == this.text)
                Positioned(
                  top: -5,
                  right: -5,
                  child: Container(
                    alignment: Alignment.center,
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
