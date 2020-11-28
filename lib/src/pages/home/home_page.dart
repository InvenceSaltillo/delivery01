import 'package:delivery01/src/pages/home/widgets/body.dart';
import 'package:delivery01/src/pages/home/widgets/categories.dart';
import 'package:delivery01/src/pages/product_detail_page/widgets/card_cart.dart';
import 'package:delivery01/src/providers/categories_provider.dart';
import 'package:delivery01/src/widgets/bottom_bar.dart';
import 'package:delivery01/src/widgets/categories_cart.dart';
import 'package:delivery01/src/widgets/circular_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoriesProvider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: HomeBody(),
    );
  }
}
