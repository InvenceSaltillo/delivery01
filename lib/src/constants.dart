import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF572d86);
const kSecondaryColor = Color(0xFFc3d61b);
const kTextColor = Color(0xFF341557);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: Colors.transparent),
  );
}
