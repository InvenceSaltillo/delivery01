import 'package:delivery01/src/providers/product_provider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Options extends StatelessWidget {
  const Options({
    Key key,
    @required ProductProvider productProvider,
    @required String site,
  })  : _productProvider = productProvider,
        _site = site,
        super(key: key);

  final ProductProvider _productProvider;
  final String _site;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          onTap: () {
            _productProvider.selectedOption = 'opcion1';
          },
          title: Text(
            'Opcion 1',
            style: TextStyle(
              fontSize: 13,
              color: kTextColor,
            ),
          ),
          trailing: Radio(
            value: 'opcion1',
            groupValue: _site,
            activeColor: kPrimaryColor,
            onChanged: (value) {
              _productProvider.selectedOption = value;
            },
          ),
        ),
        ListTile(
          onTap: () {
            _productProvider.selectedOption = 'opcion2';
          },
          title: Text(
            'Opcion 2',
            style: TextStyle(
              fontSize: 13,
              color: kTextColor,
            ),
          ),
          trailing: Radio(
            value: 'opcion2',
            groupValue: _site,
            activeColor: kPrimaryColor,
            onChanged: (value) {
              _productProvider.selectedOption = value;
            },
          ),
        ),
      ],
    );
  }
}
