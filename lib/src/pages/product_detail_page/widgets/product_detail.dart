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
        _site = site,
        super(key: key);

  final Size size;
  final ProductProvider _productProvider;
  final String _site;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 30,
        ),
        child: Container(
          height: 800,
          child: Column(
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
              Options(productProvider: _productProvider, site: _site),
            ],
          ),
        ),
      ),
    );
  }
}
