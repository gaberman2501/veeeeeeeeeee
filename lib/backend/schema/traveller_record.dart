import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TravellerRecord extends FirestoreRecord {
  TravellerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "ProfileBackgroundUrl" field.
  String? _profileBackgroundUrl;
  String get profileBackgroundUrl => _profileBackgroundUrl ?? '';
  bool hasProfileBackgroundUrl() => _profileBackgroundUrl != null;

  void _initializeFields() {
    _userid = snapshotData['Userid'] as DocumentReference?;
    _profileBackgroundUrl = snapshotData['ProfileBackgroundUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('traveller');

  static Stream<TravellerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TravellerRecord.fromSnapshot(s));

  static Future<TravellerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TravellerRecord.fromSnapshot(s));

  static TravellerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TravellerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TravellerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TravellerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TravellerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TravellerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTravellerRecordData({
  DocumentReference? userid,
  String? profileBackgroundUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Userid': userid,
      'ProfileBackgroundUrl': profileBackgroundUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class TravellerRecordDocumentEquality implements Equality<TravellerRecord> {
  const TravellerRecordDocumentEquality();

  @override
  bool equals(TravellerRecord? e1, TravellerRecord? e2) {
    return e1?.userid == e2?.userid &&
        e1?.profileBackgroundUrl == e2?.profileBackgroundUrl;
  }

  @override
  int hash(TravellerRecord? e) =>
      const ListEquality().hash([e?.userid, e?.profileBackgroundUrl]);

  @override
  bool isValidKey(Object? o) => o is TravellerRecord;
}
