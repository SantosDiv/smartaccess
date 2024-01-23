import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'scan_widget.dart' show ScanWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScanModel extends FlutterFlowModel<ScanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var documentId = '';
  // Stores action output result for [Custom Action - validateQRCode] action in IconButton widget.
  bool? isValidQrCode;
  // Stores action output result for [Custom Action - disableQrCode] action in IconButton widget.
  bool? qrCodeDisabled;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
