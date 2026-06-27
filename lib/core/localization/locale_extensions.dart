import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:cloud_vpn/gen/fonts.gen.dart';
import 'package:cloud_vpn/gen/translations.g.dart';

extension AppLocaleX on AppLocale {
  String get preferredFontFamily =>
      this == AppLocale.fa ? FontFamily.shabnam : (kIsWeb || !Platform.isWindows ? "" : FontFamily.emoji);

  String get localeName => switch (flutterLocale.toString()) {
    "ar" => "丕賱毓乇亘賷丞",
    "en" => "English",
    "es" => "Spanish",
    "fa" => "賮丕乇爻蹖",
    "fr" => "Fran莽ais",
    "id" => "Indonesian",
    "pt_BR" => "Portuguese (Brazil)",
    "ru" => "袪褍褋褋泻懈泄",
    "tr" => "T眉rk莽e",
    "zh" || "zh_CN" => "涓枃 (涓浗)",
    "zh_TW" => "涓枃 (鍙版咕)",
    _ => "Unknown",
  };
}
