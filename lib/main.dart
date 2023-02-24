import 'dart:js';

import 'package:country_name/information/details.dart';
import 'package:country_name/menu_screen/ceo.dart';
import 'package:country_name/menu_screen/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
        '/':(context) => Menu(),
        'detail':(context) => Details(),
     },
    ),
  );
}
