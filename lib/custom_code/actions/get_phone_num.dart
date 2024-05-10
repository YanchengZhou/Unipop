// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> getPhoneNum(String? phone) async {
  // given a phone number, leave only first two and last 4 digit visible and * for all other digits
  if (phone == null || phone.length < 6) {
    return 'not set';
  }
  String firstTwoDigits = phone.substring(0, 2);
  String lastFourDigits = phone.substring(phone.length - 4);
  String maskedDigits = '';
  for (int i = 2; i < phone.length - 4; i++) {
    maskedDigits += '*';
  }
  return '$firstTwoDigits$maskedDigits$lastFourDigits';
}
