import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GuestsRecord extends FirestoreRecord {
  GuestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "church" field.
  bool? _church;
  bool get church => _church ?? false;
  bool hasChurch() => _church != null;

  // "party" field.
  bool? _party;
  bool get party => _party ?? false;
  bool hasParty() => _party != null;

  // "guestId" field.
  String? _guestId;
  String get guestId => _guestId ?? '';
  bool hasGuestId() => _guestId != null;

  // "used" field.
  bool? _used;
  bool get used => _used ?? false;
  bool hasUsed() => _used != null;

  // "type" field.
  List<String>? _type;
  List<String> get type => _type ?? const [];
  bool hasType() => _type != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _church = snapshotData['church'] as bool?;
    _party = snapshotData['party'] as bool?;
    _guestId = snapshotData['guestId'] as String?;
    _used = snapshotData['used'] as bool?;
    _type = getDataList(snapshotData['type']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('guests');

  static Stream<GuestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GuestsRecord.fromSnapshot(s));

  static Future<GuestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GuestsRecord.fromSnapshot(s));

  static GuestsRecord fromSnapshot(DocumentSnapshot snapshot) => GuestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GuestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GuestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GuestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GuestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGuestsRecordData({
  String? name,
  bool? church,
  bool? party,
  String? guestId,
  bool? used,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'church': church,
      'party': party,
      'guestId': guestId,
      'used': used,
    }.withoutNulls,
  );

  return firestoreData;
}

class GuestsRecordDocumentEquality implements Equality<GuestsRecord> {
  const GuestsRecordDocumentEquality();

  @override
  bool equals(GuestsRecord? e1, GuestsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.church == e2?.church &&
        e1?.party == e2?.party &&
        e1?.guestId == e2?.guestId &&
        e1?.used == e2?.used &&
        listEquality.equals(e1?.type, e2?.type);
  }

  @override
  int hash(GuestsRecord? e) => const ListEquality()
      .hash([e?.name, e?.church, e?.party, e?.guestId, e?.used, e?.type]);

  @override
  bool isValidKey(Object? o) => o is GuestsRecord;
}
