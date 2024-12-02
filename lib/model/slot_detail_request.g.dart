// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_detail_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SlotDetailRequest extends SlotDetailRequest {
  @override
  final String yardSlotId;
  @override
  final double priceMonthly;
  @override
  final double priceHourly;

  factory _$SlotDetailRequest(
          [void Function(SlotDetailRequestBuilder)? updates]) =>
      (new SlotDetailRequestBuilder()..update(updates))._build();

  _$SlotDetailRequest._(
      {required this.yardSlotId,
      required this.priceMonthly,
      required this.priceHourly})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        yardSlotId, r'SlotDetailRequest', 'yardSlotId');
    BuiltValueNullFieldError.checkNotNull(
        priceMonthly, r'SlotDetailRequest', 'priceMonthly');
    BuiltValueNullFieldError.checkNotNull(
        priceHourly, r'SlotDetailRequest', 'priceHourly');
  }

  @override
  SlotDetailRequest rebuild(void Function(SlotDetailRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SlotDetailRequestBuilder toBuilder() =>
      new SlotDetailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SlotDetailRequest &&
        yardSlotId == other.yardSlotId &&
        priceMonthly == other.priceMonthly &&
        priceHourly == other.priceHourly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, yardSlotId.hashCode);
    _$hash = $jc(_$hash, priceMonthly.hashCode);
    _$hash = $jc(_$hash, priceHourly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SlotDetailRequest')
          ..add('yardSlotId', yardSlotId)
          ..add('priceMonthly', priceMonthly)
          ..add('priceHourly', priceHourly))
        .toString();
  }
}

class SlotDetailRequestBuilder
    implements Builder<SlotDetailRequest, SlotDetailRequestBuilder> {
  _$SlotDetailRequest? _$v;

  String? _yardSlotId;
  String? get yardSlotId => _$this._yardSlotId;
  set yardSlotId(String? yardSlotId) => _$this._yardSlotId = yardSlotId;

  double? _priceMonthly;
  double? get priceMonthly => _$this._priceMonthly;
  set priceMonthly(double? priceMonthly) => _$this._priceMonthly = priceMonthly;

  double? _priceHourly;
  double? get priceHourly => _$this._priceHourly;
  set priceHourly(double? priceHourly) => _$this._priceHourly = priceHourly;

  SlotDetailRequestBuilder();

  SlotDetailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _yardSlotId = $v.yardSlotId;
      _priceMonthly = $v.priceMonthly;
      _priceHourly = $v.priceHourly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SlotDetailRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SlotDetailRequest;
  }

  @override
  void update(void Function(SlotDetailRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SlotDetailRequest build() => _build();

  _$SlotDetailRequest _build() {
    final _$result = _$v ??
        new _$SlotDetailRequest._(
            yardSlotId: BuiltValueNullFieldError.checkNotNull(
                yardSlotId, r'SlotDetailRequest', 'yardSlotId'),
            priceMonthly: BuiltValueNullFieldError.checkNotNull(
                priceMonthly, r'SlotDetailRequest', 'priceMonthly'),
            priceHourly: BuiltValueNullFieldError.checkNotNull(
                priceHourly, r'SlotDetailRequest', 'priceHourly'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
