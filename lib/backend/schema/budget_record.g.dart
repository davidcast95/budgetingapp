// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BudgetRecord> _$budgetRecordSerializer =
    new _$BudgetRecordSerializer();

class _$BudgetRecordSerializer implements StructuredSerializer<BudgetRecord> {
  @override
  final Iterable<Type> types = const [BudgetRecord, _$BudgetRecord];
  @override
  final String wireName = 'BudgetRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BudgetRecord object,
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
    value = object.budgetAmount;
    if (value != null) {
      result
        ..add('budget_amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.totalTransactionAmount;
    if (value != null) {
      result
        ..add('total_transaction_amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.budgetName;
    if (value != null) {
      result
        ..add('budget_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('end_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.totalTransactionCount;
    if (value != null) {
      result
        ..add('total_transaction_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.budgetRemaining;
    if (value != null) {
      result
        ..add('budget_remaining')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.dailyBudgetRemaining;
    if (value != null) {
      result
        ..add('daily_budget_remaining')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.weeklyBudgetRemaining;
    if (value != null) {
      result
        ..add('weekly_budget_remaining')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('start_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  BudgetRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BudgetRecordBuilder();

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
        case 'budget_amount':
          result.budgetAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'total_transaction_amount':
          result.totalTransactionAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'budget_name':
          result.budgetName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'end_date':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'total_transaction_count':
          result.totalTransactionCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'budget_remaining':
          result.budgetRemaining = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'daily_budget_remaining':
          result.dailyBudgetRemaining = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'weekly_budget_remaining':
          result.weeklyBudgetRemaining = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$BudgetRecord extends BudgetRecord {
  @override
  final DocumentReference<Object?>? owner;
  @override
  final double? budgetAmount;
  @override
  final double? totalTransactionAmount;
  @override
  final String? budgetName;
  @override
  final DateTime? endDate;
  @override
  final int? totalTransactionCount;
  @override
  final double? budgetRemaining;
  @override
  final double? dailyBudgetRemaining;
  @override
  final double? weeklyBudgetRemaining;
  @override
  final DateTime? startDate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BudgetRecord([void Function(BudgetRecordBuilder)? updates]) =>
      (new BudgetRecordBuilder()..update(updates))._build();

  _$BudgetRecord._(
      {this.owner,
      this.budgetAmount,
      this.totalTransactionAmount,
      this.budgetName,
      this.endDate,
      this.totalTransactionCount,
      this.budgetRemaining,
      this.dailyBudgetRemaining,
      this.weeklyBudgetRemaining,
      this.startDate,
      this.ffRef})
      : super._();

  @override
  BudgetRecord rebuild(void Function(BudgetRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BudgetRecordBuilder toBuilder() => new BudgetRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BudgetRecord &&
        owner == other.owner &&
        budgetAmount == other.budgetAmount &&
        totalTransactionAmount == other.totalTransactionAmount &&
        budgetName == other.budgetName &&
        endDate == other.endDate &&
        totalTransactionCount == other.totalTransactionCount &&
        budgetRemaining == other.budgetRemaining &&
        dailyBudgetRemaining == other.dailyBudgetRemaining &&
        weeklyBudgetRemaining == other.weeklyBudgetRemaining &&
        startDate == other.startDate &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, owner.hashCode),
                                            budgetAmount.hashCode),
                                        totalTransactionAmount.hashCode),
                                    budgetName.hashCode),
                                endDate.hashCode),
                            totalTransactionCount.hashCode),
                        budgetRemaining.hashCode),
                    dailyBudgetRemaining.hashCode),
                weeklyBudgetRemaining.hashCode),
            startDate.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BudgetRecord')
          ..add('owner', owner)
          ..add('budgetAmount', budgetAmount)
          ..add('totalTransactionAmount', totalTransactionAmount)
          ..add('budgetName', budgetName)
          ..add('endDate', endDate)
          ..add('totalTransactionCount', totalTransactionCount)
          ..add('budgetRemaining', budgetRemaining)
          ..add('dailyBudgetRemaining', dailyBudgetRemaining)
          ..add('weeklyBudgetRemaining', weeklyBudgetRemaining)
          ..add('startDate', startDate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BudgetRecordBuilder
    implements Builder<BudgetRecord, BudgetRecordBuilder> {
  _$BudgetRecord? _$v;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  double? _budgetAmount;
  double? get budgetAmount => _$this._budgetAmount;
  set budgetAmount(double? budgetAmount) => _$this._budgetAmount = budgetAmount;

  double? _totalTransactionAmount;
  double? get totalTransactionAmount => _$this._totalTransactionAmount;
  set totalTransactionAmount(double? totalTransactionAmount) =>
      _$this._totalTransactionAmount = totalTransactionAmount;

  String? _budgetName;
  String? get budgetName => _$this._budgetName;
  set budgetName(String? budgetName) => _$this._budgetName = budgetName;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  int? _totalTransactionCount;
  int? get totalTransactionCount => _$this._totalTransactionCount;
  set totalTransactionCount(int? totalTransactionCount) =>
      _$this._totalTransactionCount = totalTransactionCount;

  double? _budgetRemaining;
  double? get budgetRemaining => _$this._budgetRemaining;
  set budgetRemaining(double? budgetRemaining) =>
      _$this._budgetRemaining = budgetRemaining;

  double? _dailyBudgetRemaining;
  double? get dailyBudgetRemaining => _$this._dailyBudgetRemaining;
  set dailyBudgetRemaining(double? dailyBudgetRemaining) =>
      _$this._dailyBudgetRemaining = dailyBudgetRemaining;

  double? _weeklyBudgetRemaining;
  double? get weeklyBudgetRemaining => _$this._weeklyBudgetRemaining;
  set weeklyBudgetRemaining(double? weeklyBudgetRemaining) =>
      _$this._weeklyBudgetRemaining = weeklyBudgetRemaining;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BudgetRecordBuilder() {
    BudgetRecord._initializeBuilder(this);
  }

  BudgetRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _budgetAmount = $v.budgetAmount;
      _totalTransactionAmount = $v.totalTransactionAmount;
      _budgetName = $v.budgetName;
      _endDate = $v.endDate;
      _totalTransactionCount = $v.totalTransactionCount;
      _budgetRemaining = $v.budgetRemaining;
      _dailyBudgetRemaining = $v.dailyBudgetRemaining;
      _weeklyBudgetRemaining = $v.weeklyBudgetRemaining;
      _startDate = $v.startDate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BudgetRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BudgetRecord;
  }

  @override
  void update(void Function(BudgetRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BudgetRecord build() => _build();

  _$BudgetRecord _build() {
    final _$result = _$v ??
        new _$BudgetRecord._(
            owner: owner,
            budgetAmount: budgetAmount,
            totalTransactionAmount: totalTransactionAmount,
            budgetName: budgetName,
            endDate: endDate,
            totalTransactionCount: totalTransactionCount,
            budgetRemaining: budgetRemaining,
            dailyBudgetRemaining: dailyBudgetRemaining,
            weeklyBudgetRemaining: weeklyBudgetRemaining,
            startDate: startDate,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
