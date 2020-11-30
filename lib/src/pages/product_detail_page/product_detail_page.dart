import 'package:delivery01/src/pages/product_detail_page/widgets/body_detail.dart';
import 'package:delivery01/src/providers/detail_appbar_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/detail_appbar.dart';

class ProductDetailPage extends StatelessWidget {
  PageController _controller = PageController();
  List<Widget> _list = <Widget>[
    new Container(child: new Pages(image: 'assets/images/pizzaDetail.jpg')),
    new Container(child: new Pages(image: 'assets/images/pizzaDetail2.jpg')),
    new Container(child: new Pages(image: 'assets/images/pizzaDetail.jpg')),
    new Container(child: new Pages(image: 'assets/images/pizzaDetail2.jpg'))
  ];

  @override
  Widget build(BuildContext context) {
    final _appBarProvider = Provider.of<DetailAppbarProvider>(context);
    int _currentIndex = _appBarProvider.pageIndex;
    return Scaffold(
      body: Stack(
        children: [
          DetailAppbar(
            list: _list,
            controller: _controller,
            currentIndex: _currentIndex,
          ),
          BodyDetail(),
        ],
      ),
    );
  }
}
