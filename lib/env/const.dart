////// CONST VALUES STORED HERE

import 'package:flutter/material.dart';

String primaryFontFamily = "Roboto";
String secondPrimaryFontFamily = "Open";
String raleway = "Raleway";

OutlinedBorder welcomeButtonShape = const RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(
      0.0,
    ),
  ),
  side: BorderSide(
    color: Colors.white,
    width: 1,
  ),
);

TextStyle welcomeButtonTextStyle = TextStyle(
  height: 1.2,
  color: Colors.white,
  fontFamily: secondPrimaryFontFamily,
  fontSize: 24,
  fontWeight: FontWeight.w200,
);

OutlineInputBorder codeInputs = const OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(
      0.0,
    ),
  ),
  borderSide: BorderSide(
    color: Colors.white,
    width: 2.0,
  ),
);
