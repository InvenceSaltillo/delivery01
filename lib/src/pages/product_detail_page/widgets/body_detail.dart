import 'package:delivery01/src/pages/product_detail_page/widgets/product_detail.dart';

import 'package:delivery01/src/providers/product_provider.dart';
import 'package:delivery01/src/widgets/bottom_bar.dart';
import 'package:delivery01/src/widgets/circular_button.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _productProvider = Provider.of<ProductProvider>(context);
    Size size = MediaQuery.of(context).size;
    String _site = _productProvider.selectedOption;

    return Container(
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 0,
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
