// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelAgencyDescriptionsStruct extends FFFirebaseStruct {
  TravelAgencyDescriptionsStruct({
    String? profileImagePath,
    String? profilePicturePath,
    String? name,
    String? description,
    String? contactNumber,
    String? email,
    String? address,
    String? startWork,
    String? endWork,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _profileImagePath = profileImagePath,
        _profilePicturePath = profilePicturePath,
        _name = name,
        _description = description,
        _contactNumber = contactNumber,
        _email = email,
        _address = address,
        _startWork = startWork,
        _endWork = endWork,
        super(firestoreUtilData);

  // "ProfileImagePath" field.
  String? _profileImagePath;
  String get profileImagePath => _profileImagePath ?? ' ';
  set profileImagePath(String? val) => _profileImagePath = val;
  bool hasProfileImagePath() => _profileImagePath != null;

  // "ProfilePicturePath" field.
  String? _profilePicturePath;
  String get profilePicturePath => _profilePicturePath ?? '';
  set profilePicturePath(String? val) => _profilePicturePath = val;
  bool hasProfilePicturePath() => _profilePicturePath != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '[enter name]';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '[ enter description]';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "ContactNumber" field.
  String? _contactNumber;
  String get contactNumber => _contactNumber ?? 'e.g. 012-3456789';
  set contactNumber(String? val) => _contactNumber = val;
  bool hasContactNumber() => _contactNumber != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '[enter email]';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '[enter address]';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "StartWork" field.
  String? _startWork;
  String get startWork => _startWork ?? 'choose time ->';
  set startWork(String? val) => _startWork = val;
  bool hasStartWork() => _startWork != null;

  // "EndWork" field.
  String? _endWork;
  String get endWork => _endWork ?? 'choose time ->';
  set endWork(String? val) => _endWork = val;
  bool hasEndWork() => _endWork != null;

  static TravelAgencyDescriptionsStruct fromMap(Map<String, dynamic> data) =>
      TravelAgencyDescriptionsStruct(
        profileImagePath: data['ProfileImagePath'] as String?,
        profilePicturePath: data['ProfilePicturePath'] as String?,
        name: data['Name'] as String?,
        description: data['Description'] as String?,
        contactNumber: data['ContactNumber'] as String?,
        email: data['Email'] as String?,
        address: data['Address'] as String?,
        startWork: data['StartWork'] as String?,
        endWork: data['EndWork'] as String?,
      );

  static TravelAgencyDescriptionsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TravelAgencyDescriptionsStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'ProfileImagePath': _profileImagePath,
        'ProfilePicturePath': _profilePicturePath,
        'Name': _name,
        'Description': _description,
        'ContactNumber': _contactNumber,
        'Email': _email,
        'Address': _address,
        'StartWork': _startWork,
        'EndWork': _endWork,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ProfileImagePath': serializeParam(
          _profileImagePath,
          ParamType.String,
        ),
        'ProfilePicturePath': serializeParam(
          _profilePicturePath,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
        'ContactNumber': serializeParam(
          _contactNumber,
          ParamType.String,
        ),
        'Email': serializeParam(
          _email,
          ParamType.String,
        ),
        'Address': serializeParam(
          _address,
          ParamType.String,
        ),
        'StartWork': serializeParam(
          _startWork,
          ParamType.String,
        ),
        'EndWork': serializeParam(
          _endWork,
          ParamType.String,
        ),
      }.withoutNulls;

  static TravelAgencyDescriptionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TravelAgencyDescriptionsStruct(
        profileImagePath: deserializeParam(
          data['ProfileImagePath'],
          ParamType.String,
          false,
        ),
        profilePicturePath: deserializeParam(
          data['ProfilePicturePath'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
        contactNumber: deserializeParam(
          data['ContactNumber'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['Email'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['Address'],
          ParamType.String,
          false,
        ),
        startWork: deserializeParam(
          data['StartWork'],
          ParamType.String,
          false,
        ),
        endWork: deserializeParam(
          data['EndWork'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TravelAgencyDescriptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TravelAgencyDescriptionsStruct &&
        profileImagePath == other.profileImagePath &&
        profilePicturePath == other.profilePicturePath &&
        name == other.name &&
        description == other.description &&
        contactNumber == other.contactNumber &&
        email == other.email &&
        address == other.address &&
        startWork == other.startWork &&
        endWork == other.endWork;
  }

  @override
  int get hashCode => const ListEquality().hash([
        profileImagePath,
        profilePicturePath,
        name,
        description,
        contactNumber,
        email,
        address,
        startWork,
        endWork
      ]);
}

TravelAgencyDescriptionsStruct createTravelAgencyDescriptionsStruct({
  String? profileImagePath,
  String? profilePicturePath,
  String? name,
  String? description,
  String? contactNumber,
  String? email,
  String? address,
  String? startWork,
  String? endWork,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TravelAgencyDescriptionsStruct(
      profileImagePath: profileImagePath,
      profilePicturePath: profilePicturePath,
      name: name,
      description: description,
      contactNumber: contactNumber,
      email: email,
      address: address,
      startWork: startWork,
      endWork: endWork,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TravelAgencyDescriptionsStruct? updateTravelAgencyDescriptionsStruct(
  TravelAgencyDescriptionsStruct? travelAgencyDescriptions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    travelAgencyDescriptions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTravelAgencyDescriptionsStructData(
  Map<String, dynamic> firestoreData,
  TravelAgencyDescriptionsStruct? travelAgencyDescriptions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (travelAgencyDescriptions == null) {
    return;
  }
  if (travelAgencyDescriptions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      travelAgencyDescriptions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final travelAgencyDescriptionsData = getTravelAgencyDescriptionsFirestoreData(
      travelAgencyDescriptions, forFieldValue);
  final nestedData =
      travelAgencyDescriptionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      travelAgencyDescriptions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTravelAgencyDescriptionsFirestoreData(
  TravelAgencyDescriptionsStruct? travelAgencyDescriptions, [
  bool forFieldValue = false,
]) {
  if (travelAgencyDescriptions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(travelAgencyDescriptions.toMap());

  // Add any Firestore field values
  travelAgencyDescriptions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTravelAgencyDescriptionsListFirestoreData(
  List<TravelAgencyDescriptionsStruct>? travelAgencyDescriptionss,
) =>
    travelAgencyDescriptionss
        ?.map((e) => getTravelAgencyDescriptionsFirestoreData(e, true))
        .toList() ??
    [];
