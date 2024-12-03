// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaState extends AreaState {
  @override
  final BuiltMap<String, Area> areas;
  @override
  final BuiltMap<String, Status> status;

  factory _$AreaState([void Function(AreaStateBuilder)? updates]) =>
      (new AreaStateBuilder()..update(updates))._build();

  _$AreaState._({required this.areas, required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(areas, r'AreaState', 'areas');
    BuiltValueNullFieldError.checkNotNull(status, r'AreaState', 'status');
  }

  @override
  AreaState rebuild(void Function(AreaStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaStateBuilder toBuilder() => new AreaStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaState && areas == other.areas && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areas.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaState')
          ..add('areas', areas)
          ..add('status', status))
        .toString();
  }
}

class AreaStateBuilder implements Builder<AreaState, AreaStateBuilder> {
  _$AreaState? _$v;

  MapBuilder<String, Area>? _areas;
  MapBuilder<String, Area> get areas =>
      _$this._areas ??= new MapBuilder<String, Area>();
  set areas(MapBuilder<String, Area>? areas) => _$this._areas = areas;

  MapBuilder<String, Status>? _status;
  MapBuilder<String, Status> get status =>
      _$this._status ??= new MapBuilder<String, Status>();
  set status(MapBuilder<String, Status>? status) => _$this._status = status;

  AreaStateBuilder() {
    AreaState._initializeBuilder(this);
  }

  AreaStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areas = $v.areas.toBuilder();
      _status = $v.status.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AreaState;
  }

  @override
  void update(void Function(AreaStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaState build() => _build();

  _$AreaState _build() {
    _$AreaState _$result;
    try {
      _$result = _$v ??
          new _$AreaState._(areas: areas.build(), status: status.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areas';
        areas.build();
        _$failedField = 'status';
        status.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AreaState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
