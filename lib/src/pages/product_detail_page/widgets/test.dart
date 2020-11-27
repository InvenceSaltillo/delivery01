import 'package:delivery01/src/pages/home/widgets/product_card.dart';
import 'package:delivery01/src/pages/product_detail_page/widgets/detail_appbar.dart';
import 'package:delivery01/src/providers/detail_appbar_provider.dart';
import 'package:delivery01/src/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestBody extends StatelessWidget {
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

    return SingleChildScrollView(
        child: ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
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
                    height: size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        ProductCard(
                          image: 'assets/images/pizzaVeloper.svg',
                          price: 70,
                          description: 'Lorem ipsum dolor sit amet, consetetur',
                          title: 'Pizza Cantos',
                        ),
                        ProductCard(
                          image: 'assets/images/pizzaVeloper.svg',
                          price: 70,
                          description: 'Lorem ipsum dolor sit amet, consetetur',
                          title: 'Pizza Cantos',
                        ),
                        ProductCard(
                          image: 'assets/images/pizzaVeloper.svg',
                          price: 70,
                          description: 'Lorem ipsum dolor sit amet, consetetur',
                          title: 'Pizza Cantos',
                        ),
                        ProductCard(
                          image: 'assets/images/pizzaVeloper.svg',
                          price: 70,
                          description: 'Lorem ipsum dolor sit amet, consetetur',
                          title: 'Pizza Cantos',
                        ),
                        ProductCard(
                          image: 'assets/images/pizzaVeloper.svg',
                          price: 70,
                          description: 'Lorem ipsum dolor sit amet, consetetur',
                          title: 'Pizza Cantos',
                        ),
                        ProductCard(
                          image: 'assets/images/pizzaVeloper.svg',
                          price: 70,
                          description: 'Lorem ipsum dolor sit amet, consetetur',
                          title: 'Pizza Cantos',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
    // SingleChildScrollView(
    //   child: Stack(
    //     children: [
    //       Container(
    //         width: double.infinity,
    //         decoration: BoxDecoration(),
    //         child: DetailAppbar(
    //           list: _list,
    //           controller: _controller,
    //           currentIndex: _currentIndex,
    //         ),
    //       ),
    //       Container(
    //         height: 500,
    //       ),
    //       Positioned(
    //         top: 350,
    //         left: 0,
    //         right: 0,
    //         child: Column(
    //           children: [
    //             Container(
    //               width: double.infinity,
    //               height: 1000,
    //               decoration: BoxDecoration(
    //                 color: Colors.white,
    //                 borderRadius: BorderRadius.only(
    //                   topLeft: Radius.circular(30),
    //                   topRight: Radius.circular(30),
    //                 ),
    //               ),
    //             ),
    //             Column(
    //               children: [
    //                 ProductCard(
    //                   image: 'assets/images/pizzaVeloper.svg',
    //                   price: 70,
    //                   description: 'Lorem ipsum dolor sit amet, consetetur',
    //                   title: 'Pizza Cantos',
    //                 ),
    //                 ProductCard(
    //                   image: 'assets/images/pizzaVeloper.svg',
    //                   price: 70,
    //                   description: 'Lorem ipsum dolor sit amet, consetetur',
    //                   title: 'Pizza Cantos',
    //                 ),
    //                 ProductCard(
    //                   image: 'assets/images/pizzaVeloper.svg',
    //                   price: 70,
    //                   description: 'Lorem ipsum dolor sit amet, consetetur',
    //                   title: 'Pizza Cantos',
    //                 ),
    //                 ProductCard(
    //                   image: 'assets/images/pizzaVeloper.svg',
    //                   price: 70,
    //                   description: 'Lorem ipsum dolor sit amet, consetetur',
    //                   title: 'Pizza Cantos',
    //                 ),
    //                 ProductCard(
    //                   image: 'assets/images/pizzaVeloper.svg',
    //                   price: 70,
    //                   description: 'Lorem ipsum dolor sit amet, consetetur',
    //                   title: 'Pizza Cantos',
    //                 ),
    //                 ProductCard(
    //                   image: 'assets/images/pizzaVeloper.svg',
    //                   price: 70,
    //                   description: 'Lorem ipsum dolor sit amet, consetetur',
    //                   title: 'Pizza Cantos',
    //                 ),
    //                 ProductCard(
    //                   image: 'assets/images/pizzaVeloper.svg',
    //                   price: 70,
    //                   description: 'Lorem ipsum dolor sit amet, consetetur',
    //                   title: 'Pizza Cantos',
    //                 ),
    //                 ProductCard(
    //                   image: 'assets/images/pizzaVeloper.svg',
    //                   price: 70,
    //                   description: 'Lorem ipsum dolor sit amet, consetetur',
    //                   title: 'Pizza Cantos',
    //                 ),
    //                 ProductCard(
    //                   image: 'assets/images/pizzaVeloper.svg',
    //                   price: 70,
    //                   description: 'Lorem ipsum dolor sit amet, consetetur',
    //                   title: 'Pizza Cantos',
    //                 ),
    //               ],
    //             )
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
