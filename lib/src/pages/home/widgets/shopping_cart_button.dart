import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ShoppingCartButton extends StatelessWidget {
  const ShoppingCartButton({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 30,
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 10),
          child: Container(
            width: 30,
            height: 30,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset(
              'assets/icons/shopping-cart.svg',
            ),
          ),
        ),
      ),
    );
  }
}
