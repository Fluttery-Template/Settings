# Settings

A flutter ui design of the Settings for iOS and Android.

<img src="/flutter.jpg">

## Usage

To set your publishable key set:
```dart
import 'package:settings/components/CustomShowDialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
SettingsState createState() => new SettingsState();
```
from somewhere in your code, e.g. your main.dart file.

To open the dialog:
```dart
 _MyFormState createState() => new _MyFormState(); //this is the Language Dialog
});
```

## Android

Please be aware that your main activity must extend from FlutterFragmentActivity. Otherwise the Android dialog would've looked very nasty.

## TODO

- [ ] better error handling
- [ ] internationalization
- [ ] more stripe library implementations?
