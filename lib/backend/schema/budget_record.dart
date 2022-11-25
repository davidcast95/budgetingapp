import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'budget_record.g.dart';

abstract class BudgetRecord
    implements Built<BudgetRecord, BudgetRecordBuilder> {
  static Serializer<BudgetRecord> get serializer => _$budgetRecordSerializer;

  DocumentReference? get owner;

  @BuiltValueField(wireName: 'budget_amount')
  double? get budgetAmount;

  @BuiltValueField(wireName: 'total_transaction_amount')
  double? get totalTransactionAmount;

  @BuiltValueField(wireName: 'budget_name')
  String? get budgetName;

  @BuiltValueField(wireName: 'end_date')
  DateTime? get endDate;

  @BuiltValueField(wireName: 'total_transaction_count')
  int? get totalTransactionCount;

  @BuiltValueField(wireName: 'budget_remaining')
  double? get budgetRemaining;

  @BuiltValueField(wireName: 'daily_budget_remaining')
  double? get dailyBudgetRemaining;

  @BuiltValueField(wireName: 'weekly_budget_remaining')
  double? get weeklyBudgetRemaining;

  @BuiltValueField(wireName: 'start_date')
  DateTime? get startDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BudgetRecordBuilder builder) => builder
    ..budgetAmount = 0.0
    ..totalTransactionAmount = 0.0
    ..budgetName = ''
    ..totalTransactionCount = 0
    ..budgetRemaining = 0.0
    ..dailyBudgetRemaining = 0.0
    ..weeklyBudgetRemaining = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('budget');

  static Stream<BudgetRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BudgetRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BudgetRecord._();
  factory BudgetRecord([void Function(BudgetRecordBuilder) updates]) =
      _$BudgetRecord;

  static BudgetRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBudgetRecordData({
  DocumentReference? owner,
  double? budgetAmount,
  double? totalTransactionAmount,
  String? budgetName,
  DateTime? endDate,
  int? totalTransactionCount,
  double? budgetRemaining,
  double? dailyBudgetRemaining,
  double? weeklyBudgetRemaining,
  DateTime? startDate,
}) {
  final firestoreData = serializers.toFirestore(
    BudgetRecord.serializer,
    BudgetRecord(
      (b) => b
        ..owner = owner
        ..budgetAmount = budgetAmount
        ..totalTransactionAmount = totalTransactionAmount
        ..budgetName = budgetName
        ..endDate = endDate
        ..totalTransactionCount = totalTransactionCount
        ..budgetRemaining = budgetRemaining
        ..dailyBudgetRemaining = dailyBudgetRemaining
        ..weeklyBudgetRemaining = weeklyBudgetRemaining
        ..startDate = startDate,
    ),
  );

  return firestoreData;
}
