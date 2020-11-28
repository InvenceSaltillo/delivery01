import 'package:delivery01/src/pages/product_detail_page/widgets/product_detail.dart';

import 'package:delivery01/src/providers/detail_appbar_provider.dart';
import 'package:delivery01/src/providers/product_provider.dart';
import 'package:delivery01/src/widgets/bottom_bar.dart';
import 'package:delivery01/src/widgets/circular_button.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'detail_appbar.dart';

class BodyDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appBarProvider = Provider.of<DetailAppbarProvider>(context);
    final _productProvider = Provider.of<ProductProvider>(context);
    PageController _controller = PageController();
    List<Widget> _list = <Widget>[
      new Container(child: new Pages(image: 'assets/images/pizzaDetail.jpg')),
      new Container(child: new Pages(image: 'assets/images/pizzaDetail2.jpg')),
      new Container(child: new Pages(image: 'assets/images/pizzaDetail.jpg')),
      new Container(child: new Pages(image: 'assets/images/pizzaDetail2.jpg'))
    ];
    int _currentIndex = _appBarProvider.pageIndex;

    Size size = MediaQuery.of(context).size;

    String _site = _productProvider.selectedOption;

    return Container(
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: DetailAppbar(
              list: _list,
              controller: _controller,
              currentIndex: _currentIndex,
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            top: 318,
            right: 60,
            child: CircularButton(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 20,
              ),
              color: Color(0xffEE3169),
              width: 52,
              height: 52,
              onTap: () {},
            ),
          ),
          ProductDetail(
              size: size, productProvider: _productProvider, site: _site),
          Positioned(
            child: BottomBar(
              itemCount: 5,
              text: 'Mi cesta',
              total: 125.55,
            ),
          ),
        ],
      ),
    );
  }
}
