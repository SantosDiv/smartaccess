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

Future<bool> disableQrCode(String? documentId) async {
  try {
    final DocumentReference<Map<String, dynamic>> guestReference =
        await FirebaseFirestore.instance.collection('guests').doc(documentId);

    final DocumentSnapshot<Map<String, dynamic>> guest =
        await guestReference.get();
    final Map<String, dynamic>? data = guest.data();

    if (data == null) {
      throw 'Dado não encontrado';
    }

    data['used'] = true;

    await guestReference.set(data);
    return true;
  } catch (e) {
    return false;
  }
}
