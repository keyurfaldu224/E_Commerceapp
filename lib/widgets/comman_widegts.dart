import 'package:flutter/material.dart';

Widget commanTextfiled({
  String hintText,
  IconData iconData,
  TextEditingController controller,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(50),
    ),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(iconData),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
    ),
  );
}

Widget commanButton({
  Function onPressed,
  String buttonText,
  Color buttonColor,
}) {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(13),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        primary: buttonColor,
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}
