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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
