import 'package:delivery01/src/pages/product_detail_page/widgets/price_qty.dart';
import 'package:delivery01/src/providers/product_provider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'complemets_title.dart';
import 'options.dart';
import 'sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key key,
    @required this.size,
    @required ProductProvider productProvider,
    @required String site,
  })  : _productProvider = productProvider,
        _optionSelected = site,
        super(key: key);

  final Size size;
  final ProductProvider _productProvider;
  final String _optionSelected;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * .38,
      left: 0,
      right: 0,
      child: Container(
        width: double.infinity,
        height: size.height - 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: ListView(
            children: [
              Row(
                children: [
                  Text(
                    'Pizza Cantos',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              PriceAndQty(),
              SizedBox(height: 20),
              Text(
                'Culpa est dolor et laboris. Labore cupidatat cillum dolor elit sit. Deserunt cillum amet cillum cillum et nostrud reprehenderit. Irure labore deserunt officia proident et eiusmod eiusmod.',
                style: TextStyle(
                  fontSize: 10,
                  color: kTextColor,
                  letterSpacing: 1,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Elige tamaño',
                    style: TextStyle(
                      fontSize: 16,
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  Image.asset('assets/icons/checklist.png'),
                ],
              ),
              SizedBox(height: 20),
              Sizes(productProvider: _productProvider),
              SizedBox(height: 30),
              ComplementsTitle(),
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
                  groupValue: _optionSelected,
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
                  groupValue: _optionSelected,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    _productProvider.selectedOption = value;
                  },
                ),
              ),
              ListTile(
                onTap: () {
                  _productProvider.selectedOption = 'opcion3';
                },
                title: Text(
                  'Opcion 3',
                  style: TextStyle(
                    fontSize: 13,
                    color: kTextColor,
                  ),
                ),
                trailing: Radio(
                  value: 'opcion3',
                  groupValue: _optionSelected,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    _productProvider.selectedOption = value;
                  },
                ),
              ),
              SizedBox(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
