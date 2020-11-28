import 'package:delivery01/src/pages/cart/cart_page.dart';
import 'package:delivery01/src/pages/home/home_page.dart';
import 'package:delivery01/src/pages/product_detail_page/product_detail_page.dart';
import 'package:delivery01/src/providers/categories_provider.dart';
import 'package:delivery01/src/providers/detail_appbar_provider.dart';
import 'package:delivery01/src/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoriesProvider()),
        ChangeNotifierProvider(create: (_) => DetailAppbarProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'product_detail': (_) => ProductDetailPage(),
          'cart': (_) => CartPage(),
        },
      ),
    );
  }
}
