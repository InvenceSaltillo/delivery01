import 'package:delivery01/src/providers/product_provider.dart';
import 'package:delivery01/src/widgets/circular_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class PriceAndQty extends StatelessWidget {
  const PriceAndQty({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _productProvider = Provider.of<ProductProvider>(context);
    return Row(
      children: [
        Text(
          '\$140.00',
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        CircularButton(
          icon: Icon(Icons.remove),
          color: Colors.white,
          width: 28,
          height: 28,
          onTap: () {
            if (_productProvider.qty > 0) {
              _productProvider.qty--;
            }
          },
          border: Border.all(
            color: kSecondaryColor,
          ),
        ),
        SizedBox(width: 10),
        Text(
          '${(_productProvider.qty < 10) ? "0" : ''}${_productProvider.qty}',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        CircularButton(
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          color: kPrimaryColor,
          width: 28,
          height: 28,
          onTap: () {
            _productProvider.qty++;
          },
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
