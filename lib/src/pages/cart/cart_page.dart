import 'package:delivery01/src/pages/cart/widgets/cart_body.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: CartBody(),
      ),
    );
  }
}
