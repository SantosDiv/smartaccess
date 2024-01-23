// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

import 'package:cloud_firestore/cloud_firestore.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<bool?> validateQRCode(String? documentId) async {
  try {
    final DocumentSnapshot<Map<String, dynamic>> guest = await FirebaseFirestore
        .instance
        .collection('guests')
        .doc(documentId)
        .get();
    if (!guest.exists) {
      return false;
    }

    final Map<String, dynamic>? data = guest.data();
    final used = data?['used'];
    if (used == null) {
      return false;
    }

    return !used;
  } catch (e) {
    // Error occurred
    return false;
  }
}
