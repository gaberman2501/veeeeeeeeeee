import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_TravelAgencyDetails')) {
        try {
          final serializedData =
              prefs.getString('ff_TravelAgencyDetails') ?? '{}';
          _TravelAgencyDetails =
              TravelAgencyDescriptionsStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_TemporaryStorageEdit')) {
        try {
          final serializedData =
              prefs.getString('ff_TemporaryStorageEdit') ?? '{}';
          _TemporaryStorageEdit =
              TemporaryStorageEditModeStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  TravelAgencyDescriptionsStruct _TravelAgencyDetails =
      TravelAgencyDescriptionsStruct.fromSerializableMap(jsonDecode(
          '{\"ProfilePicturePath\":\"\",\"Name\":\"Golden Tropics\",\"Description\":\"Hi we are Golden Tropics, aiming for good itineraries\",\"ContactNumber\":\"03-9103232\",\"Email\":\"testing@gmail.com\",\"Address\":\"No 89, Jalan Tun Sultan, Taman Bukit Tinggi\"}'));
  TravelAgencyDescriptionsStruct get TravelAgencyDetails =>
      _TravelAgencyDetails;
  set TravelAgencyDetails(TravelAgencyDescriptionsStruct _value) {
    _TravelAgencyDetails = _value;
    prefs.setString('ff_TravelAgencyDetails', _value.serialize());
  }

  void updateTravelAgencyDetailsStruct(
      Function(TravelAgencyDescriptionsStruct) updateFn) {
    updateFn(_TravelAgencyDetails);
    prefs.setString('ff_TravelAgencyDetails', _TravelAgencyDetails.serialize());
  }

  TemporaryStorageEditModeStruct _TemporaryStorageEdit =
      TemporaryStorageEditModeStruct();
  TemporaryStorageEditModeStruct get TemporaryStorageEdit =>
      _TemporaryStorageEdit;
  set TemporaryStorageEdit(TemporaryStorageEditModeStruct _value) {
    _TemporaryStorageEdit = _value;
    prefs.setString('ff_TemporaryStorageEdit', _value.serialize());
  }

  void updateTemporaryStorageEditStruct(
      Function(TemporaryStorageEditModeStruct) updateFn) {
    updateFn(_TemporaryStorageEdit);
    prefs.setString(
        'ff_TemporaryStorageEdit', _TemporaryStorageEdit.serialize());
  }
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
