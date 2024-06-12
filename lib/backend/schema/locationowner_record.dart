import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationownerRecord extends FirestoreRecord {
  LocationownerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "LocationPhotos" field.
  List<String>? _locationPhotos;
  List<String> get locationPhotos => _locationPhotos ?? const [];
  bool hasLocationPhotos() => _locationPhotos != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "StartTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "EndTime" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  bool hasEndTime() => _endTime != null;

  // "Rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "Country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  void _initializeFields() {
    _userid = snapshotData['Userid'] as DocumentReference?;
    _locationPhotos = getDataList(snapshotData['LocationPhotos']);
    _address = snapshotData['Address'] as String?;
    _startTime = snapshotData['StartTime'] as String?;
    _endTime = snapshotData['EndTime'] as String?;
    _rating = castToType<double>(snapshotData['Rating']);
    _country = snapshotData['Country'] as String?;
    _city = snapshotData['City'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locationowner');

  static Stream<LocationownerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationownerRecord.fromSnapshot(s));

  static Future<LocationownerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationownerRecord.fromSnapshot(s));

  static LocationownerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationownerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationownerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationownerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationownerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationownerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocationownerRecordData({
  DocumentReference? userid,
  String? address,
  String? startTime,
  String? endTime,
  double? rating,
  String? country,
  String? city,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Userid': userid,
      'Address': address,
      'StartTime': startTime,
      'EndTime': endTime,
      'Rating': rating,
      'Country': country,
      'City': city,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationownerRecordDocumentEquality
    implements Equality<LocationownerRecord> {
  const LocationownerRecordDocumentEquality();

  @override
  bool equals(LocationownerRecord? e1, LocationownerRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userid == e2?.userid &&
        listEquality.equals(e1?.locationPhotos, e2?.locationPhotos) &&
        e1?.address == e2?.address &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.rating == e2?.rating &&
        e1?.country == e2?.country &&
        e1?.city == e2?.city;
  }

  @override
  int hash(LocationownerRecord? e) => const ListEquality().hash([
        e?.userid,
        e?.locationPhotos,
        e?.address,
        e?.startTime,
        e?.endTime,
        e?.rating,
        e?.country,
        e?.city
      ]);

  @override
  bool isValidKey(Object? o) => o is LocationownerRecord;
}
