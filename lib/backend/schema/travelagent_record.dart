import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravelagentRecord extends FirestoreRecord {
  TravelagentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ProfileBackgroundUrl" field.
  String? _profileBackgroundUrl;
  String get profileBackgroundUrl => _profileBackgroundUrl ?? '';
  bool hasProfileBackgroundUrl() => _profileBackgroundUrl != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "StartWork" field.
  String? _startWork;
  String get startWork => _startWork ?? '';
  bool hasStartWork() => _startWork != null;

  // "EndWork" field.
  String? _endWork;
  String get endWork => _endWork ?? '';
  bool hasEndWork() => _endWork != null;

  // "Userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  void _initializeFields() {
    _profileBackgroundUrl = snapshotData['ProfileBackgroundUrl'] as String?;
    _address = snapshotData['Address'] as String?;
    _startWork = snapshotData['StartWork'] as String?;
    _endWork = snapshotData['EndWork'] as String?;
    _userid = snapshotData['Userid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('travelagent');

  static Stream<TravelagentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TravelagentRecord.fromSnapshot(s));

  static Future<TravelagentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TravelagentRecord.fromSnapshot(s));

  static TravelagentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TravelagentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TravelagentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TravelagentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TravelagentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TravelagentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTravelagentRecordData({
  String? profileBackgroundUrl,
  String? address,
  String? startWork,
  String? endWork,
  DocumentReference? userid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProfileBackgroundUrl': profileBackgroundUrl,
      'Address': address,
      'StartWork': startWork,
      'EndWork': endWork,
      'Userid': userid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TravelagentRecordDocumentEquality implements Equality<TravelagentRecord> {
  const TravelagentRecordDocumentEquality();

  @override
  bool equals(TravelagentRecord? e1, TravelagentRecord? e2) {
    return e1?.profileBackgroundUrl == e2?.profileBackgroundUrl &&
        e1?.address == e2?.address &&
        e1?.startWork == e2?.startWork &&
        e1?.endWork == e2?.endWork &&
        e1?.userid == e2?.userid;
  }

  @override
  int hash(TravelagentRecord? e) => const ListEquality().hash([
        e?.profileBackgroundUrl,
        e?.address,
        e?.startWork,
        e?.endWork,
        e?.userid
      ]);

  @override
  bool isValidKey(Object? o) => o is TravelagentRecord;
}
