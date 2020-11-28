import 'package:delivery01/src/constants.dart';

import 'package:delivery01/src/providers/detail_appbar_provider.dart';
import 'package:delivery01/src/providers/product_provider.dart';
import 'package:delivery01/src/widgets/bottom_bar.dart';
import 'package:delivery01/src/widgets/circular_button.dart';
import 'package:delivery01/src/widgets/size_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'detail_appbar.dart';

class TestDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appBarProvider = Provider.of<DetailAppbarProvider>(context);
    final _productProvider = Provider.of<ProductProvider>(context);
    PageController _controller = PageController();
    List<Widget> _list = <Widget>[
      new Container(child: new Pages(image: 'assets/images/pizzaDetail.jpg')),
      new Container(child: new Pages(image: 'assets/images/pizzaDetail2.jpg')),
      new Container(child: new Pages(image: 'assets/images/pizzaDetail.jpg')),
      new Container(child: new Pages(image: 'assets/images/pizzaDetail2.jpg'))
    ];
    int _currentIndex = _appBarProvider.pageIndex;

    Size size = MediaQuery.of(context).size;

    String _site = _productProvider.selectedOption;

    return Container(
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: DetailAppbar(
              list: _list,
              controller: _controller,
              currentIndex: _currentIndex,
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            top: 318,
            right: 60,
            child: CircularButton(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 20,
              ),
              color: Color(0xffEE3169),
              width: 52,
              height: 52,
              onTap: () {},
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 30,
              ),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Container(
                  height: size.height,
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
                      Row(
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
                              print('mas');
                            },
                            border: Border.all(
                              color: kSecondaryColor,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '02',
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
                            onTap: () {},
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
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
                      Row(
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
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Elige complemento',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: kTextColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Selecciona hasta dos opciones',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: kTextColor,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 103,
                            height: 33,
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Text(
                              'Obligatorio',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff758017),
                              ),
                            ),
                          )
                        ],
                      ),
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
                          groupValue: _site,
                          activeColor: kPrimaryColor,
                          onChanged: (value) {
                            _productProvider.selectedOption = value;
                          },
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _productProvider.selectedOption = 'opcion4';
                        },
                        title: Text(
                          'Opcion 4',
                          style: TextStyle(
                            fontSize: 13,
                            color: kTextColor,
                          ),
                        ),
                        trailing: Radio(
                          value: 'opcion4',
                          groupValue: _site,
                          activeColor: kPrimaryColor,
                          onChanged: (value) {
                            _productProvider.selectedOption = value;
                          },
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _productProvider.selectedOption = 'opcion4';
                        },
                        title: Text(
                          'Opcion 4',
                          style: TextStyle(
                            fontSize: 13,
                            color: kTextColor,
                          ),
                        ),
                        trailing: Radio(
                          value: 'opcion4',
                          groupValue: _site,
                          activeColor: kPrimaryColor,
                          onChanged: (value) {
                            _productProvider.selectedOption = value;
                          },
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _productProvider.selectedOption = 'opcion4';
                        },
                        title: Text(
                          'Opcion 4',
                          style: TextStyle(
                            fontSize: 13,
                            color: kTextColor,
                          ),
                        ),
                        trailing: Radio(
                          value: 'opcion4',
                          groupValue: _site,
                          activeColor: kPrimaryColor,
                          onChanged: (value) {
                            _productProvider.selectedOption = value;
                          },
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _productProvider.selectedOption = 'opcion4';
                        },
                        title: Text(
                          'Opcion 4',
                          style: TextStyle(
                            fontSize: 13,
                            color: kTextColor,
                          ),
                        ),
                        trailing: Radio(
                          value: 'opcion4',
                          groupValue: _site,
                          activeColor: kPrimaryColor,
                          onChanged: (value) {
                            _productProvider.selectedOption = value;
                          },
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _productProvider.selectedOption = 'opcion4';
                        },
                        title: Text(
                          'Opcion 4',
                          style: TextStyle(
                            fontSize: 13,
                            color: kTextColor,
                          ),
                        ),
                        trailing: Radio(
                          value: 'opcion4',
                          groupValue: _site,
                          activeColor: kPrimaryColor,
                          onChanged: (value) {
                            _productProvider.selectedOption = value;
                          },
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _productProvider.selectedOption = 'opcion4';
                        },
                        title: Text(
                          'Opcion 4',
                          style: TextStyle(
                            fontSize: 13,
                            color: kTextColor,
                          ),
                        ),
                        trailing: Radio(
                          value: 'opcion4',
                          groupValue: _site,
                          activeColor: kPrimaryColor,
                          onChanged: (value) {
                            _productProvider.selectedOption = value;
                          },
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _productProvider.selectedOption = 'opcion4';
                        },
                        title: Text(
                          'Opcion 4',
                          style: TextStyle(
                            fontSize: 13,
                            color: kTextColor,
                          ),
                        ),
                        trailing: Radio(
                          value: 'opcion4',
                          groupValue: _site,
                          activeColor: kPrimaryColor,
                          onChanged: (value) {
                            _productProvider.selectedOption = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: BottomBar(
              itemCount: 5,
              text: 'Mi cesta',
              total: 125.55,
            ),
          ),
        ],
      ),
    );
  }
}
