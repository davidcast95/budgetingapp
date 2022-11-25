// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_transaction_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BudgetTransactionRecord> _$budgetTransactionRecordSerializer =
    new _$BudgetTransactionRecordSerializer();

class _$BudgetTransactionRecordSerializer
    implements StructuredSerializer<BudgetTransactionRecord> {
  @override
  final Iterable<Type> types = const [
    BudgetTransactionRecord,
    _$BudgetTransactionRecord
  ];
  @override
  final String wireName = 'BudgetTransactionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BudgetTransactionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.transactionOn;
    if (value != null) {
      result
        ..add('transaction_on')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.budget;
    if (value != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.transactionDate;
    if (value != null) {
      result
        ..add('transaction_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BudgetTransactionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BudgetTransactionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'transaction_on':
          result.transactionOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'transaction_date':
          result.transactionDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BudgetTransactionRecord extends BudgetTransactionRecord {
  @override
  final DocumentReference<Object?>? owner;
  @override
  final DateTime? transactionOn;
  @override
  final double? amount;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? budget;
  @override
  final String? transactionDate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BudgetTransactionRecord(
          [void Function(BudgetTransactionRecordBuilder)? updates]) =>
      (new BudgetTransactionRecordBuilder()..update(updates))._build();

  _$BudgetTransactionRecord._(
      {this.owner,
      this.transactionOn,
      this.amount,
      this.description,
      this.budget,
      this.transactionDate,
      this.ffRef})
      : super._();

  @override
  BudgetTransactionRecord rebuild(
          void Function(BudgetTransactionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BudgetTransactionRecordBuilder toBuilder() =>
      new BudgetTransactionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BudgetTransactionRecord &&
        owner == other.owner &&
        transactionOn == other.transactionOn &&
        amount == other.amount &&
        description == other.description &&
        budget == other.budget &&
        transactionDate == other.transactionDate &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, owner.hashCode), transactionOn.hashCode),
                        amount.hashCode),
                    description.hashCode),
                budget.hashCode),
            transactionDate.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BudgetTransactionRecord')
          ..add('owner', owner)
          ..add('transactionOn', transactionOn)
          ..add('amount', amount)
          ..add('description', description)
          ..add('budget', budget)
          ..add('transactionDate', transactionDate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BudgetTransactionRecordBuilder
    implements
        Builder<BudgetTransactionRecord, BudgetTransactionRecordBuilder> {
  _$BudgetTransactionRecord? _$v;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  DateTime? _transactionOn;
  DateTime? get transactionOn => _$this._transactionOn;
  set transactionOn(DateTime? transactionOn) =>
      _$this._transactionOn = transactionOn;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _budget;
  DocumentReference<Object?>? get budget => _$this._budget;
  set budget(DocumentReference<Object?>? budget) => _$this._budget = budget;

  String? _transactionDate;
  String? get transactionDate => _$this._transactionDate;
  set transactionDate(String? transactionDate) =>
      _$this._transactionDate = transactionDate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BudgetTransactionRecordBuilder() {
    BudgetTransactionRecord._initializeBuilder(this);
  }

  BudgetTransactionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _transactionOn = $v.transactionOn;
      _amount = $v.amount;
      _description = $v.description;
      _budget = $v.budget;
      _transactionDate = $v.transactionDate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BudgetTransactionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BudgetTransactionRecord;
  }

  @override
  void update(void Function(BudgetTransactionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BudgetTransactionRecord build() => _build();

  _$BudgetTransactionRecord _build() {
    final _$result = _$v ??
        new _$BudgetTransactionRecord._(
            owner: owner,
            transactionOn: transactionOn,
            amount: amount,
            description: description,
            budget: budget,
            transactionDate: transactionDate,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
