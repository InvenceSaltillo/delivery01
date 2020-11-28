import 'package:delivery01/src/providers/product_provider.dart';
import 'package:delivery01/src/widgets/size_button.dart';
import 'package:flutter/material.dart';

class Sizes extends StatelessWidget {
  const Sizes({
    Key key,
    @required ProductProvider productProvider,
  })  : _productProvider = productProvider,
        super(key: key);

  final ProductProvider _productProvider;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizeButton(
          text: 'ch',
          onTap: () {
            _productProvider.productSize = 'ch';
          },
        ),
        SizeButton(
          text: 'md',
          onTap: () {
            _productProvider.productSize = 'md';
          },
        ),
        SizeButton(
          text: 'gd',
          onTap: () {
            _productProvider.productSize = 'gd';
          },
        ),
        SizeButton(
          text: 'fm',
          onTap: () {
            _productProvider.productSize = 'fm';
          },
        ),
      ],
    );
  }
}
