// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_yard_slot_detail_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateYardSlotDetail extends UpdateYardSlotDetail {
  @override
  final BuiltList<SlotDetailRequest> slots;

  factory _$UpdateYardSlotDetail(
          [void Function(UpdateYardSlotDetailBuilder)? updates]) =>
      (new UpdateYardSlotDetailBuilder()..update(updates))._build();

  _$UpdateYardSlotDetail._({required this.slots}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        slots, r'UpdateYardSlotDetail', 'slots');
  }

  @override
  UpdateYardSlotDetail rebuild(
          void Function(UpdateYardSlotDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateYardSlotDetailBuilder toBuilder() =>
      new UpdateYardSlotDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateYardSlotDetail && slots == other.slots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, slots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateYardSlotDetail')
          ..add('slots', slots))
        .toString();
  }
}

class UpdateYardSlotDetailBuilder
    implements Builder<UpdateYardSlotDetail, UpdateYardSlotDetailBuilder> {
  _$UpdateYardSlotDetail? _$v;

  ListBuilder<SlotDetailRequest>? _slots;
  ListBuilder<SlotDetailRequest> get slots =>
      _$this._slots ??= new ListBuilder<SlotDetailRequest>();
  set slots(ListBuilder<SlotDetailRequest>? slots) => _$this._slots = slots;

  UpdateYardSlotDetailBuilder();

  UpdateYardSlotDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slots = $v.slots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateYardSlotDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateYardSlotDetail;
  }

  @override
  void update(void Function(UpdateYardSlotDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateYardSlotDetail build() => _build();

  _$UpdateYardSlotDetail _build() {
    _$UpdateYardSlotDetail _$result;
    try {
      _$result = _$v ?? new _$UpdateYardSlotDetail._(slots: slots.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'slots';
        slots.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateYardSlotDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
