import 'dart:io';
import 'package:flutter/foundation.dart';

class PlatformProvider {
  static bool get useCanvasKit {
    return const bool.fromEnvironment('FLUTTER_WEB_USE_SKIA');
  }
  static bool get useWebCanvasKit {
    return isWeb && useCanvasKit;
  }
  static bool get useWebHtml {
    return isWeb && !useCanvasKit;
  }

  static bool get isWeb {
    return kIsWeb;
  }

  static bool get isNotWeb {
    return !isWeb;
  }

  static bool get isWindows {
    if (isNotWeb && Platform.isWindows) {
      return true;
    }

    return false;
  }

  static bool get isMacOS {
    if (isNotWeb && Platform.isMacOS) {
      return true;
    }

    return false;
  }

  static bool get isLinux {
    if (isNotWeb && Platform.isLinux) {
      return true;
    }

    return false;
  }

  static bool get isDesktop {
    return isWindows || isLinux || isMacOS;
  }

  static bool get isIOS {
    if (isNotWeb && Platform.isIOS) {
      return true;
    }

    return false;
  }

  static bool get isAndroid {
    if (isNotWeb && Platform.isAndroid) {
      return true;
    }

    return false;
  }

  static bool get isFuchsia {
    if (isNotWeb && Platform.isFuchsia) {
      return true;
    }

    return false;
  }

  static bool get isMobileSystem {
    if (isAndroid || isIOS) {
      return true;
    }
    return false;
  }

  static String get pathSeparator {
    if (isWeb) {
      return "/";
    }
    return Platform.pathSeparator;
  }

  static String get operatingSystem {
    if (isWeb) {
      return "Web";
    }
    return Platform.operatingSystem;
  }

  static String get operatingSystemVersion {
    if (isWeb) {
      //现在只是package 不是plugin，无法引用dart:html
      // html.window.navigator.appVersion
      return "Unsupport";
    }
    return Platform.operatingSystemVersion;
  }
}
