// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<ChatsRecord?> getChatDoc(
  List<ChatsRecord>? list1,
  List<ChatsRecord>? list2,
) async {
  // given two lists, return common element if exist, return null if not
  if (list1 == null || list2 == null) {
    return null;
  }

  for (var i = 0; i < list1.length; i++) {
    for (var j = 0; j < list2.length; j++) {
      if (list1[i].reference.id == list2[j].reference.id) {
        return list1[i];
      }
    }
  }

  return null;
}
