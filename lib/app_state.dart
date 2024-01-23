import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<dynamic> _typeGuestAccessDropDown = [
    jsonDecode('{\"id\":1,\"label\":\"Igreja\"}'),
    jsonDecode('{\"id\":2,\"label\":\"Festa\"}')
  ];
  List<dynamic> get typeGuestAccessDropDown => _typeGuestAccessDropDown;
  set typeGuestAccessDropDown(List<dynamic> _value) {
    _typeGuestAccessDropDown = _value;
  }

  void addToTypeGuestAccessDropDown(dynamic _value) {
    _typeGuestAccessDropDown.add(_value);
  }

  void removeFromTypeGuestAccessDropDown(dynamic _value) {
    _typeGuestAccessDropDown.remove(_value);
  }

  void removeAtIndexFromTypeGuestAccessDropDown(int _index) {
    _typeGuestAccessDropDown.removeAt(_index);
  }

  void updateTypeGuestAccessDropDownAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _typeGuestAccessDropDown[_index] =
        updateFn(_typeGuestAccessDropDown[_index]);
  }

  void insertAtIndexInTypeGuestAccessDropDown(int _index, dynamic _value) {
    _typeGuestAccessDropDown.insert(_index, _value);
  }

  List<dynamic> _selectedValuesTypeGuestAccess = [];
  List<dynamic> get selectedValuesTypeGuestAccess =>
      _selectedValuesTypeGuestAccess;
  set selectedValuesTypeGuestAccess(List<dynamic> _value) {
    _selectedValuesTypeGuestAccess = _value;
  }

  void addToSelectedValuesTypeGuestAccess(dynamic _value) {
    _selectedValuesTypeGuestAccess.add(_value);
  }

  void removeFromSelectedValuesTypeGuestAccess(dynamic _value) {
    _selectedValuesTypeGuestAccess.remove(_value);
  }

  void removeAtIndexFromSelectedValuesTypeGuestAccess(int _index) {
    _selectedValuesTypeGuestAccess.removeAt(_index);
  }

  void updateSelectedValuesTypeGuestAccessAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _selectedValuesTypeGuestAccess[_index] =
        updateFn(_selectedValuesTypeGuestAccess[_index]);
  }

  void insertAtIndexInSelectedValuesTypeGuestAccess(
      int _index, dynamic _value) {
    _selectedValuesTypeGuestAccess.insert(_index, _value);
  }

  bool _isShowFullList = true;
  bool get isShowFullList => _isShowFullList;
  set isShowFullList(bool _value) {
    _isShowFullList = _value;
  }

  bool _showImageScan = true;
  bool get showImageScan => _showImageScan;
  set showImageScan(bool _value) {
    _showImageScan = _value;
  }

  String _currentPage = '';
  String get currentPage => _currentPage;
  set currentPage(String _value) {
    _currentPage = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
