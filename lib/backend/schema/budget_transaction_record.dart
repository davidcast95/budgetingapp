import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'budget_transaction_record.g.dart';

abstract class BudgetTransactionRecord
    implements Built<BudgetTransactionRecord, BudgetTransactionRecordBuilder> {
  static Serializer<BudgetTransactionRecord> get serializer =>
      _$budgetTransactionRecordSerializer;

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

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(BudgetTransactionRecordBuilder builder) =>
      builder
        ..amount = 0.0
        ..description = ''
        ..transactionDate = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('budget_transaction')
          : FirebaseFirestore.instance.collectionGroup('budget_transaction');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('budget_transaction').doc();

  static Stream<BudgetTransactionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BudgetTransactionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BudgetTransactionRecord._();
  factory BudgetTransactionRecord(
          [void Function(BudgetTransactionRecordBuilder) updates]) =
      _$BudgetTransactionRecord;

  static BudgetTransactionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBudgetTransactionRecordData({
  DocumentReference? owner,
  DateTime? transactionOn,
  double? amount,
  String? description,
  DocumentReference? budget,
  String? transactionDate,
}) {
  final firestoreData = serializers.toFirestore(
    BudgetTransactionRecord.serializer,
    BudgetTransactionRecord(
      (b) => b
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
