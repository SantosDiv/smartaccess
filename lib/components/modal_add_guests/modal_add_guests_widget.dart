import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_add_guests_model.dart';
export 'modal_add_guests_model.dart';

class ModalAddGuestsWidget extends StatefulWidget {
  const ModalAddGuestsWidget({Key? key}) : super(key: key);

  @override
  _ModalAddGuestsWidgetState createState() => _ModalAddGuestsWidgetState();
}

class _ModalAddGuestsWidgetState extends State<ModalAddGuestsWidget> {
  late ModalAddGuestsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalAddGuestsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 0.992,
      decoration: BoxDecoration(
        color: Color(0xFF2B2B2B),
        boxShadow: [
          BoxShadow(
            blurRadius: 6.0,
            color: Color(0x33000000),
            offset: Offset(0.0, 0.0),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        border: Border.all(
          color: Color(0x803624FF),
          width: 1.0,
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cadastrar Convidado',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 10.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      child: TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Nome',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFFEFEFEF),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFCACACA),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFA8A8A8),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Color(0xFF2A2A2A),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: Color(0xFFEFEFEF),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300,
                            ),
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: FlutterFlowDropDown<String>(
                    multiSelectController: _model.dropDownValueController ??=
                        FormFieldController<List<String>>(null),
                    options: ['Festa', 'Igreja'],
                    width: 250.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                    hintText: 'Está convidado para..',
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Color(0xFFEFEFEF),
                      size: 24.0,
                    ),
                    fillColor: Color(0xFF2A2A2A),
                    elevation: 2.0,
                    borderColor: Color(0xFFEFEFEF),
                    borderWidth: 1.0,
                    borderRadius: 10.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: true,
                    isSearchable: false,
                    isMultiSelect: true,
                    onMultiSelectChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                  ),
                ),
              ],
            ),
            FFButtonWidget(
              onPressed: () async {
                var guestsRecordReference = GuestsRecord.collection.doc();
                await guestsRecordReference.set({
                  ...createGuestsRecordData(
                    name: _model.textController.text,
                    guestId: random_data.randomString(
                      16,
                      16,
                      true,
                      false,
                      false,
                    ),
                    used: false,
                  ),
                  ...mapToFirestore(
                    {
                      'type': _model.dropDownValue,
                    },
                  ),
                });
                _model.guest = GuestsRecord.getDocumentFromData({
                  ...createGuestsRecordData(
                    name: _model.textController.text,
                    guestId: random_data.randomString(
                      16,
                      16,
                      true,
                      false,
                      false,
                    ),
                    used: false,
                  ),
                  ...mapToFirestore(
                    {
                      'type': _model.dropDownValue,
                    },
                  ),
                }, guestsRecordReference);

                await _model.guest!.reference.update({
                  ...mapToFirestore(
                    {
                      'type': FieldValue.arrayUnion(['Todos']),
                    },
                  ),
                });
                Navigator.pop(context);

                setState(() {});
              },
              text: 'Adicionar',
              options: FFButtonOptions(
                width: MediaQuery.sizeOf(context).width * 0.8,
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFF2496FF),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ].divide(SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
