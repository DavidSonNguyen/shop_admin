// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaState extends AreaState {
  @override
  final BuiltMap<String, Area> areas;
  @override
  final String selectedAreaId;
  @override
  final BuiltMap<String, Status> statuses;

  factory _$AreaState([void Function(AreaStateBuilder)? updates]) =>
      (new AreaStateBuilder()..update(updates))._build();

  _$AreaState._(
      {required this.areas,
      required this.selectedAreaId,
      required this.statuses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(areas, r'AreaState', 'areas');
    BuiltValueNullFieldError.checkNotNull(
        selectedAreaId, r'AreaState', 'selectedAreaId');
    BuiltValueNullFieldError.checkNotNull(statuses, r'AreaState', 'statuses');
  }

  @override
  AreaState rebuild(void Function(AreaStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaStateBuilder toBuilder() => new AreaStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaState &&
        areas == other.areas &&
        selectedAreaId == other.selectedAreaId &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areas.hashCode);
    _$hash = $jc(_$hash, selectedAreaId.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaState')
          ..add('areas', areas)
          ..add('selectedAreaId', selectedAreaId)
          ..add('statuses', statuses))
        .toString();
  }
}

class AreaStateBuilder implements Builder<AreaState, AreaStateBuilder> {
  _$AreaState? _$v;

  MapBuilder<String, Area>? _areas;
  MapBuilder<String, Area> get areas =>
      _$this._areas ??= new MapBuilder<String, Area>();
  set areas(MapBuilder<String, Area>? areas) => _$this._areas = areas;

  String? _selectedAreaId;
  String? get selectedAreaId => _$this._selectedAreaId;
  set selectedAreaId(String? selectedAreaId) =>
      _$this._selectedAreaId = selectedAreaId;

  MapBuilder<String, Status>? _statuses;
  MapBuilder<String, Status> get statuses =>
      _$this._statuses ??= new MapBuilder<String, Status>();
  set statuses(MapBuilder<String, Status>? statuses) =>
      _$this._statuses = statuses;

  AreaStateBuilder() {
    AreaState._initializeBuilder(this);
  }

  AreaStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areas = $v.areas.toBuilder();
      _selectedAreaId = $v.selectedAreaId;
      _statuses = $v.statuses.toBuilder();
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
          new _$AreaState._(
              areas: areas.build(),
              selectedAreaId: BuiltValueNullFieldError.checkNotNull(
                  selectedAreaId, r'AreaState', 'selectedAreaId'),
              statuses: statuses.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areas';
        areas.build();

        _$failedField = 'statuses';
        statuses.build();
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
