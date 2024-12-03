// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAreasEvent extends GetAreasEvent {
  factory _$GetAreasEvent([void Function(GetAreasEventBuilder)? updates]) =>
      (new GetAreasEventBuilder()..update(updates))._build();

  _$GetAreasEvent._() : super._();

  @override
  GetAreasEvent rebuild(void Function(GetAreasEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAreasEventBuilder toBuilder() => new GetAreasEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAreasEvent;
  }

  @override
  int get hashCode {
    return 38080486;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAreasEvent').toString();
  }
}

class GetAreasEventBuilder
    implements Builder<GetAreasEvent, GetAreasEventBuilder> {
  _$GetAreasEvent? _$v;

  GetAreasEventBuilder();

  @override
  void replace(GetAreasEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAreasEvent;
  }

  @override
  void update(void Function(GetAreasEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAreasEvent build() => _build();

  _$GetAreasEvent _build() {
    final _$result = _$v ?? new _$GetAreasEvent._();
    replace(_$result);
    return _$result;
  }
}

class _$SelectAreaEvent extends SelectAreaEvent {
  @override
  final String areaId;

  factory _$SelectAreaEvent([void Function(SelectAreaEventBuilder)? updates]) =>
      (new SelectAreaEventBuilder()..update(updates))._build();

  _$SelectAreaEvent._({required this.areaId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(areaId, r'SelectAreaEvent', 'areaId');
  }

  @override
  SelectAreaEvent rebuild(void Function(SelectAreaEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectAreaEventBuilder toBuilder() =>
      new SelectAreaEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectAreaEvent && areaId == other.areaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectAreaEvent')
          ..add('areaId', areaId))
        .toString();
  }
}

class SelectAreaEventBuilder
    implements Builder<SelectAreaEvent, SelectAreaEventBuilder> {
  _$SelectAreaEvent? _$v;

  String? _areaId;
  String? get areaId => _$this._areaId;
  set areaId(String? areaId) => _$this._areaId = areaId;

  SelectAreaEventBuilder();

  SelectAreaEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectAreaEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectAreaEvent;
  }

  @override
  void update(void Function(SelectAreaEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectAreaEvent build() => _build();

  _$SelectAreaEvent _build() {
    final _$result = _$v ??
        new _$SelectAreaEvent._(
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'SelectAreaEvent', 'areaId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
