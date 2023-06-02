<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
# Show VM Info

`show_vm_info` is a Flutter package that displays the Dart VM debugging URL information in a popup dialog when the app is launched on Windows platform in debug or profile mode.


## Getting started

Add this to your package's `pubspec.yaml` file:
```yaml
dependencies:
  show_vm_info: ^1.0.0
```

You can install packages from the command line:
```bash
$ flutter pub get
```

Import the package in your Dart code:
```dart
import 'package:show_vm_info/show_vm_info.dart';
```

## Example
Then call the showVMInfo() function to display the Dart VM debugging URL information in a popup dialog:

```dart
import 'package:flutter/material.dart';
import 'package:show_vm_info/show_vm_info.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
  ShowVMInfo.showDebugVmInfoDialog(navigatorKey);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
```

## Limitations
show_vm_info package is only available on Windows platform in debug or profile mode. It will not work on other platforms or in release mode.

## License
show_vm_info is licensed under the MIT License. See the LICENSE file for details.