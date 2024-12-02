// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_yard_slot_detail_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetYardSlotDetailEvent extends GetYardSlotDetailEvent {
  @override
  final String yardId;

  factory _$GetYardSlotDetailEvent(
          [void Function(GetYardSlotDetailEventBuilder)? updates]) =>
      (new GetYardSlotDetailEventBuilder()..update(updates))._build();

  _$GetYardSlotDetailEvent._({required this.yardId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        yardId, r'GetYardSlotDetailEvent', 'yardId');
  }

  @override
  GetYardSlotDetailEvent rebuild(
          void Function(GetYardSlotDetailEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetYardSlotDetailEventBuilder toBuilder() =>
      new GetYardSlotDetailEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetYardSlotDetailEvent && yardId == other.yardId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, yardId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetYardSlotDetailEvent')
          ..add('yardId', yardId))
        .toString();
  }
}

class GetYardSlotDetailEventBuilder
    implements Builder<GetYardSlotDetailEvent, GetYardSlotDetailEventBuilder> {
  _$GetYardSlotDetailEvent? _$v;

  String? _yardId;
  String? get yardId => _$this._yardId;
  set yardId(String? yardId) => _$this._yardId = yardId;

  GetYardSlotDetailEventBuilder();

  GetYardSlotDetailEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _yardId = $v.yardId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetYardSlotDetailEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetYardSlotDetailEvent;
  }

  @override
  void update(void Function(GetYardSlotDetailEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetYardSlotDetailEvent build() => _build();

  _$GetYardSlotDetailEvent _build() {
    final _$result = _$v ??
        new _$GetYardSlotDetailEvent._(
            yardId: BuiltValueNullFieldError.checkNotNull(
                yardId, r'GetYardSlotDetailEvent', 'yardId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
