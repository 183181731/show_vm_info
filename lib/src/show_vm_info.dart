library show_vm_info;

import 'dart:developer';
import 'platform_extension.dart';
import 'package:flutter/material.dart';

class ShowVMInfo {
  static void showDebugVmInfoDialog(
      GlobalKey<NavigatorState> navigatorKey) async {
    if (PlatformProvider.isDesktop) {
      String observatoryUrl = (await Service.getInfo()).serverUri.toString();
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        showDialog(
          context: navigatorKey.currentContext!,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('DarVM Observatory Url：'),
              content: SelectableText(
                observatoryUrl,
                style: const TextStyle(fontSize: 16),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      });
    }
  }
}
