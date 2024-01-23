// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:multiselect_dropdown_flutter/multiselect_dropdown_flutter.dart';

class DropdownMultiselect extends StatefulWidget {
  const DropdownMultiselect({
    Key? key,
    this.width,
    this.height,
    required this.data,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<dynamic> data;

  @override
  _DropdownMultiselectState createState() => _DropdownMultiselectState();
}

class _DropdownMultiselectState extends State<DropdownMultiselect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            MultiSelectDropdown(
              list: widget.data,
              initiallySelected: const [],
              onChange: (newList) {
                FFAppState().selectedValuesTypeGuestAccess = newList;
              },
              numberOfItemsLabelToShow: 2, // label to be shown for 2 items
              whenEmpty:
                  'Choose from the list', // text to show when selected list is empty
              checkboxFillColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
