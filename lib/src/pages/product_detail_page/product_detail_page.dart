import 'package:delivery01/src/pages/product_detail_page/widgets/body_detail.dart';
import 'package:delivery01/src/providers/detail_appbar_provider.dart';
import 'package:delivery01/src/providers/product_provider.dart';
import 'package:delivery01/src/widgets/circular_button.dart';

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
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          DetailAppbar(
              list: _list,
              controller: _controller,
              currentIndex: _currentIndex),
          BottomSheets(),
        ],
      ),
    );
  }
}

class BottomSheets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.55,
        minChildSize: 0.55,
        maxChildSize: 0.96,
        builder: (context, scrollController) {
          return Container(
            child: Scrollview(scrollController: scrollController),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
          );
        });
  }
}

class Scrollview extends StatelessWidget {
  final ScrollController scrollController;
  const Scrollview({Key key, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        controller: scrollController,
        child: BodyDetail(),
      ),
    );
  }
}
