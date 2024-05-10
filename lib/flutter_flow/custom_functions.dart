import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<ItemsRecord>? reverseList(List<ItemsRecord>? inputList) {
  // reverse the input list if it is not null, or return the original list
  if (inputList != null) {
    return inputList.reversed.toList();
  } else {
    return inputList;
  }
}

String? getPhone(String? phone) {
  //   // given a phone number, leave only first two and last 4 digit visible and * for all otther digits
  if (phone == null || phone.length < 10) {
    return phone;
  }
  final visibleDigits = 6;
  final firstTwo = phone.substring(0, 2);
  final lastFour = phone.substring(phone.length - 4);
  final hiddenDigits = phone.length - visibleDigits;
  final hidden = List.generate(hiddenDigits, (_) => '*').join();
  return '$firstTwo$hidden$lastFour';
}
