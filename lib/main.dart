import 'package:flutter/material.dart';
import 'package:settings/screens/settings.dart';
import 'package:settings/themes/style.dart';


void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  color: Colors.orange,
  home: new Settings(),
  //home: new Verification(),
  theme: appTheme,
),);



