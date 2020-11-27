import 'package:delivery01/src/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class SizeButton extends StatelessWidget {
  const SizeButton({
    Key key,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  final String text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final _productProvider = Provider.of<ProductProvider>(context);
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn,
        alignment: Alignment.center,
        width: 56,
        height: 28,
        decoration: BoxDecoration(
          color: _productProvider.productSize == text
              ? kPrimaryColor
              : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontSize: 13,
            color: _productProvider.productSize == text
                ? Colors.white
                : kPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
