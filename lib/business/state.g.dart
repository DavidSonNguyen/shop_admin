// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final BuiltMap<String, Yard> yards;
  @override
  final BuiltMap<String, BuiltSet<String>> yardSlotIdsByYardId;
  @override
  final BuiltMap<String, YardSlot> yardSlots;
  @override
  final Object? updateSlotDetailsError;
  @override
  final LoadingStatus updateSlotDetailsStatus;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {required this.yards,
      required this.yardSlotIdsByYardId,
      required this.yardSlots,
      this.updateSlotDetailsError,
      required this.updateSlotDetailsStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(yards, r'AppState', 'yards');
    BuiltValueNullFieldError.checkNotNull(
        yardSlotIdsByYardId, r'AppState', 'yardSlotIdsByYardId');
    BuiltValueNullFieldError.checkNotNull(yardSlots, r'AppState', 'yardSlots');
    BuiltValueNullFieldError.checkNotNull(
        updateSlotDetailsStatus, r'AppState', 'updateSlotDetailsStatus');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        yards == other.yards &&
        yardSlotIdsByYardId == other.yardSlotIdsByYardId &&
        yardSlots == other.yardSlots &&
        updateSlotDetailsError == other.updateSlotDetailsError &&
        updateSlotDetailsStatus == other.updateSlotDetailsStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, yards.hashCode);
    _$hash = $jc(_$hash, yardSlotIdsByYardId.hashCode);
    _$hash = $jc(_$hash, yardSlots.hashCode);
    _$hash = $jc(_$hash, updateSlotDetailsError.hashCode);
    _$hash = $jc(_$hash, updateSlotDetailsStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('yards', yards)
          ..add('yardSlotIdsByYardId', yardSlotIdsByYardId)
          ..add('yardSlots', yardSlots)
          ..add('updateSlotDetailsError', updateSlotDetailsError)
          ..add('updateSlotDetailsStatus', updateSlotDetailsStatus))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  MapBuilder<String, Yard>? _yards;
  MapBuilder<String, Yard> get yards =>
      _$this._yards ??= new MapBuilder<String, Yard>();
  set yards(MapBuilder<String, Yard>? yards) => _$this._yards = yards;

  MapBuilder<String, BuiltSet<String>>? _yardSlotIdsByYardId;
  MapBuilder<String, BuiltSet<String>> get yardSlotIdsByYardId =>
      _$this._yardSlotIdsByYardId ??=
          new MapBuilder<String, BuiltSet<String>>();
  set yardSlotIdsByYardId(
          MapBuilder<String, BuiltSet<String>>? yardSlotIdsByYardId) =>
      _$this._yardSlotIdsByYardId = yardSlotIdsByYardId;

  MapBuilder<String, YardSlot>? _yardSlots;
  MapBuilder<String, YardSlot> get yardSlots =>
      _$this._yardSlots ??= new MapBuilder<String, YardSlot>();
  set yardSlots(MapBuilder<String, YardSlot>? yardSlots) =>
      _$this._yardSlots = yardSlots;

  Object? _updateSlotDetailsError;
  Object? get updateSlotDetailsError => _$this._updateSlotDetailsError;
  set updateSlotDetailsError(Object? updateSlotDetailsError) =>
      _$this._updateSlotDetailsError = updateSlotDetailsError;

  LoadingStatus? _updateSlotDetailsStatus;
  LoadingStatus? get updateSlotDetailsStatus => _$this._updateSlotDetailsStatus;
  set updateSlotDetailsStatus(LoadingStatus? updateSlotDetailsStatus) =>
      _$this._updateSlotDetailsStatus = updateSlotDetailsStatus;

  AppStateBuilder() {
    AppState._initializeBuilder(this);
  }

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _yards = $v.yards.toBuilder();
      _yardSlotIdsByYardId = $v.yardSlotIdsByYardId.toBuilder();
      _yardSlots = $v.yardSlots.toBuilder();
      _updateSlotDetailsError = $v.updateSlotDetailsError;
      _updateSlotDetailsStatus = $v.updateSlotDetailsStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              yards: yards.build(),
              yardSlotIdsByYardId: yardSlotIdsByYardId.build(),
              yardSlots: yardSlots.build(),
              updateSlotDetailsError: updateSlotDetailsError,
              updateSlotDetailsStatus: BuiltValueNullFieldError.checkNotNull(
                  updateSlotDetailsStatus,
                  r'AppState',
                  'updateSlotDetailsStatus'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'yards';
        yards.build();
        _$failedField = 'yardSlotIdsByYardId';
        yardSlotIdsByYardId.build();
        _$failedField = 'yardSlots';
        yardSlots.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
