// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yard_slot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$YardSlot extends YardSlot {
  @override
  final String id;
  @override
  final BuiltList<String> mergeIds;
  @override
  final String yardId;
  @override
  final TimeModel from;
  @override
  final TimeModel to;
  @override
  final int weekDay;
  @override
  final int? mergedToWeekDay;
  @override
  final double priceMonthly;
  @override
  final double priceHourly;

  factory _$YardSlot([void Function(YardSlotBuilder)? updates]) =>
      (new YardSlotBuilder()..update(updates))._build();

  _$YardSlot._(
      {required this.id,
      required this.mergeIds,
      required this.yardId,
      required this.from,
      required this.to,
      required this.weekDay,
      this.mergedToWeekDay,
      required this.priceMonthly,
      required this.priceHourly})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'YardSlot', 'id');
    BuiltValueNullFieldError.checkNotNull(mergeIds, r'YardSlot', 'mergeIds');
    BuiltValueNullFieldError.checkNotNull(yardId, r'YardSlot', 'yardId');
    BuiltValueNullFieldError.checkNotNull(from, r'YardSlot', 'from');
    BuiltValueNullFieldError.checkNotNull(to, r'YardSlot', 'to');
    BuiltValueNullFieldError.checkNotNull(weekDay, r'YardSlot', 'weekDay');
    BuiltValueNullFieldError.checkNotNull(
        priceMonthly, r'YardSlot', 'priceMonthly');
    BuiltValueNullFieldError.checkNotNull(
        priceHourly, r'YardSlot', 'priceHourly');
  }

  @override
  YardSlot rebuild(void Function(YardSlotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YardSlotBuilder toBuilder() => new YardSlotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YardSlot &&
        id == other.id &&
        mergeIds == other.mergeIds &&
        yardId == other.yardId &&
        from == other.from &&
        to == other.to &&
        weekDay == other.weekDay &&
        mergedToWeekDay == other.mergedToWeekDay &&
        priceMonthly == other.priceMonthly &&
        priceHourly == other.priceHourly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mergeIds.hashCode);
    _$hash = $jc(_$hash, yardId.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, weekDay.hashCode);
    _$hash = $jc(_$hash, mergedToWeekDay.hashCode);
    _$hash = $jc(_$hash, priceMonthly.hashCode);
    _$hash = $jc(_$hash, priceHourly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'YardSlot')
          ..add('id', id)
          ..add('mergeIds', mergeIds)
          ..add('yardId', yardId)
          ..add('from', from)
          ..add('to', to)
          ..add('weekDay', weekDay)
          ..add('mergedToWeekDay', mergedToWeekDay)
          ..add('priceMonthly', priceMonthly)
          ..add('priceHourly', priceHourly))
        .toString();
  }
}

class YardSlotBuilder implements Builder<YardSlot, YardSlotBuilder> {
  _$YardSlot? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<String>? _mergeIds;
  ListBuilder<String> get mergeIds =>
      _$this._mergeIds ??= new ListBuilder<String>();
  set mergeIds(ListBuilder<String>? mergeIds) => _$this._mergeIds = mergeIds;

  String? _yardId;
  String? get yardId => _$this._yardId;
  set yardId(String? yardId) => _$this._yardId = yardId;

  TimeModelBuilder? _from;
  TimeModelBuilder get from => _$this._from ??= new TimeModelBuilder();
  set from(TimeModelBuilder? from) => _$this._from = from;

  TimeModelBuilder? _to;
  TimeModelBuilder get to => _$this._to ??= new TimeModelBuilder();
  set to(TimeModelBuilder? to) => _$this._to = to;

  int? _weekDay;
  int? get weekDay => _$this._weekDay;
  set weekDay(int? weekDay) => _$this._weekDay = weekDay;

  int? _mergedToWeekDay;
  int? get mergedToWeekDay => _$this._mergedToWeekDay;
  set mergedToWeekDay(int? mergedToWeekDay) =>
      _$this._mergedToWeekDay = mergedToWeekDay;

  double? _priceMonthly;
  double? get priceMonthly => _$this._priceMonthly;
  set priceMonthly(double? priceMonthly) => _$this._priceMonthly = priceMonthly;

  double? _priceHourly;
  double? get priceHourly => _$this._priceHourly;
  set priceHourly(double? priceHourly) => _$this._priceHourly = priceHourly;

  YardSlotBuilder() {
    YardSlot._setDefaults(this);
  }

  YardSlotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _mergeIds = $v.mergeIds.toBuilder();
      _yardId = $v.yardId;
      _from = $v.from.toBuilder();
      _to = $v.to.toBuilder();
      _weekDay = $v.weekDay;
      _mergedToWeekDay = $v.mergedToWeekDay;
      _priceMonthly = $v.priceMonthly;
      _priceHourly = $v.priceHourly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YardSlot other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$YardSlot;
  }

  @override
  void update(void Function(YardSlotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  YardSlot build() => _build();

  _$YardSlot _build() {
    _$YardSlot _$result;
    try {
      _$result = _$v ??
          new _$YardSlot._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'YardSlot', 'id'),
              mergeIds: mergeIds.build(),
              yardId: BuiltValueNullFieldError.checkNotNull(
                  yardId, r'YardSlot', 'yardId'),
              from: from.build(),
              to: to.build(),
              weekDay: BuiltValueNullFieldError.checkNotNull(
                  weekDay, r'YardSlot', 'weekDay'),
              mergedToWeekDay: mergedToWeekDay,
              priceMonthly: BuiltValueNullFieldError.checkNotNull(
                  priceMonthly, r'YardSlot', 'priceMonthly'),
              priceHourly: BuiltValueNullFieldError.checkNotNull(
                  priceHourly, r'YardSlot', 'priceHourly'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mergeIds';
        mergeIds.build();

        _$failedField = 'from';
        from.build();
        _$failedField = 'to';
        to.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'YardSlot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
