import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/emptylist/emptylist_widget.dart';
import '/components/nav_bar_bottom/nav_bar_bottom_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'guests_widget.dart' show GuestsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class GuestsModel extends FlutterFlowModel<GuestsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<GuestsRecord> simpleSearchResults = [];
  List<String> termSearch = [];
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Model for NavBarBottom component.
  late NavBarBottomModel navBarBottomModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarBottomModel = createModel(context, () => NavBarBottomModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navBarBottomModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
