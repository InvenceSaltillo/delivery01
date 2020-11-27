import 'package:flutter/material.dart';

import '../../../constants.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      width: double.infinity,
      height: 100,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: '¿Qué quieres comer hoy',
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: kTextColor.withOpacity(0.3),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: kTextColor.withOpacity(0.3),
            size: 30,
          ),
        ),
      ),
    );
  }
}
