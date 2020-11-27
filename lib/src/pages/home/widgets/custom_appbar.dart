import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10, right: 20),
      child: Row(
        children: [
          InkWell(
            child: SvgPicture.asset(
              'assets/icons/menu.svg',
              width: 25,
            ),
            onTap: () {},
          ),
          SizedBox(width: 20),
          Text(
            'Entrega en: ',
            style: TextStyle(
              color: kTextColor.withOpacity(.4),
              fontSize: 15,
            ),
          ),
          DropdownButton<String>(
            value: 'México 1',
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: kTextColor,
            ),
            iconSize: 30,
            elevation: 16,
            style: TextStyle(
              color: kTextColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            onChanged: (String newValue) {},
            items: <String>['México 1', 'México 2', 'México 3']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Spacer(),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/me.jpg'),
          ),
        ],
      ),
    );
  }
}
