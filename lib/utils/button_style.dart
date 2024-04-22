import 'package:expense_app/utils/colors.dart';
import 'package:flutter/material.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(
    side: BorderSide(color: AppColor.primary),
    borderRadius: BorderRadius.circular(10.0),
  )),
);