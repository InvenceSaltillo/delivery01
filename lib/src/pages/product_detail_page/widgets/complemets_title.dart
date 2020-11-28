import 'package:flutter/material.dart';

import '../../../constants.dart';

class ComplementsTitle extends StatelessWidget {
  const ComplementsTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
