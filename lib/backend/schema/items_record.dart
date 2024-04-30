import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsRecord extends FirestoreRecord {
  ItemsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "datePosted" field.
  DateTime? _datePosted;
  DateTime? get datePosted => _datePosted;
  bool hasDatePosted() => _datePosted != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "sellerID" field.
  String? _sellerID;
  String get sellerID => _sellerID ?? '';
  bool hasSellerID() => _sellerID != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "availability" field.
  bool? _availability;
  bool get availability => _availability ?? false;
  bool hasAvailability() => _availability != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "sellerRef" field.
  DocumentReference? _sellerRef;
  DocumentReference? get sellerRef => _sellerRef;
  bool hasSellerRef() => _sellerRef != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _type = snapshotData['type'] as String?;
    _datePosted = snapshotData['datePosted'] as DateTime?;
    _price = castToType<double>(snapshotData['price']);
    _sellerID = snapshotData['sellerID'] as String?;
    _description = snapshotData['description'] as String?;
    _availability = snapshotData['availability'] as bool?;
    _condition = snapshotData['condition'] as String?;
    _brand = snapshotData['brand'] as String?;
    _image = getDataList(snapshotData['image']);
    _sellerRef = snapshotData['sellerRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsRecord.fromSnapshot(s));

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsRecord.fromSnapshot(s));

  static ItemsRecord fromSnapshot(DocumentSnapshot snapshot) => ItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsRecordData({
  String? name,
  String? type,
  DateTime? datePosted,
  double? price,
  String? sellerID,
  String? description,
  bool? availability,
  String? condition,
  String? brand,
  DocumentReference? sellerRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'type': type,
      'datePosted': datePosted,
      'price': price,
      'sellerID': sellerID,
      'description': description,
      'availability': availability,
      'condition': condition,
      'brand': brand,
      'sellerRef': sellerRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemsRecordDocumentEquality implements Equality<ItemsRecord> {
  const ItemsRecordDocumentEquality();

  @override
  bool equals(ItemsRecord? e1, ItemsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.type == e2?.type &&
        e1?.datePosted == e2?.datePosted &&
        e1?.price == e2?.price &&
        e1?.sellerID == e2?.sellerID &&
        e1?.description == e2?.description &&
        e1?.availability == e2?.availability &&
        e1?.condition == e2?.condition &&
        e1?.brand == e2?.brand &&
        listEquality.equals(e1?.image, e2?.image) &&
        e1?.sellerRef == e2?.sellerRef;
  }

  @override
  int hash(ItemsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.type,
        e?.datePosted,
        e?.price,
        e?.sellerID,
        e?.description,
        e?.availability,
        e?.condition,
        e?.brand,
        e?.image,
        e?.sellerRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ItemsRecord;
}
