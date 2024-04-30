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

DocumentReference? getChat(
  List<DocumentReference> list1,
  List<DocumentReference> list2,
) {
// Create a set from list1 for faster lookup
  Set<DocumentReference> set1 = Set.from(list1);

  // Iterate through list2 and check if each element is in set1
  for (DocumentReference element in list2) {
    if (set1.contains(element)) {
      return element;
    }
  }

  // No common element found
  return null;
}
