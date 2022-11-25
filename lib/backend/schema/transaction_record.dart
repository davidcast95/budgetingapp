import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transaction_record.g.dart';

abstract class TransactionRecord
    implements Built<TransactionRecord, TransactionRecordBuilder> {
  static Serializer<TransactionRecord> get serializer =>
      _$transactionRecordSerializer;

  DocumentReference? get owner;

  @BuiltValueField(wireName: 'transaction_on')
  DateTime? get transactionOn;

  double? get amount;

  String? get description;

  DocumentReference? get budget;

  @BuiltValueField(wireName: 'transaction_date')
  String? get transactionDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TransactionRecordBuilder builder) => builder
    ..amount = 0.0
    ..description = ''
    ..transactionDate = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transaction');

  static Stream<TransactionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TransactionRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TransactionRecord._();
  factory TransactionRecord([void Function(TransactionRecordBuilder) updates]) =
      _$TransactionRecord;

  static TransactionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTransactionRecordData({
  DocumentReference? owner,
  DateTime? transactionOn,
  double? amount,
  String? description,
  DocumentReference? budget,
  String? transactionDate,
}) {
  final firestoreData = serializers.toFirestore(
    TransactionRecord.serializer,
    TransactionRecord(
      (t) => t
        ..owner = owner
        ..transactionOn = transactionOn
        ..amount = amount
        ..description = description
        ..budget = budget
        ..transactionDate = transactionDate,
    ),
  );

  return firestoreData;
}
