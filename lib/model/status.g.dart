// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Status extends Status {
  @override
  final LoadingStatus loadingStatus;
  @override
  final String? message;

  factory _$Status([void Function(StatusBuilder)? updates]) =>
      (new StatusBuilder()..update(updates))._build();

  _$Status._({required this.loadingStatus, this.message}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        loadingStatus, r'Status', 'loadingStatus');
  }

  @override
  Status rebuild(void Function(StatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusBuilder toBuilder() => new StatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Status &&
        loadingStatus == other.loadingStatus &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loadingStatus.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Status')
          ..add('loadingStatus', loadingStatus)
          ..add('message', message))
        .toString();
  }
}

class StatusBuilder implements Builder<Status, StatusBuilder> {
  _$Status? _$v;

  LoadingStatus? _loadingStatus;
  LoadingStatus? get loadingStatus => _$this._loadingStatus;
  set loadingStatus(LoadingStatus? loadingStatus) =>
      _$this._loadingStatus = loadingStatus;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  StatusBuilder();

  StatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loadingStatus = $v.loadingStatus;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Status other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Status;
  }

  @override
  void update(void Function(StatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Status build() => _build();

  _$Status _build() {
    final _$result = _$v ??
        new _$Status._(
            loadingStatus: BuiltValueNullFieldError.checkNotNull(
                loadingStatus, r'Status', 'loadingStatus'),
            message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
