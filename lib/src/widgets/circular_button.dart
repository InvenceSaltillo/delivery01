import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    Key key,
    @required this.icon,
    @required this.color,
    this.border,
    this.width = 29,
    this.height = 29,
    @required this.onTap,
  }) : super(key: key);

  final Icon icon;
  final Color color;
  final Border border;
  final double width, height;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
          border: border,
        ),
        child: icon,
      ),
    );
  }
}
