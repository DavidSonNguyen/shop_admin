// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeModel extends TimeModel {
  @override
  final int hour;
  @override
  final int minute;

  factory _$TimeModel([void Function(TimeModelBuilder)? updates]) =>
      (new TimeModelBuilder()..update(updates))._build();

  _$TimeModel._({required this.hour, required this.minute}) : super._() {
    BuiltValueNullFieldError.checkNotNull(hour, r'TimeModel', 'hour');
    BuiltValueNullFieldError.checkNotNull(minute, r'TimeModel', 'minute');
  }

  @override
  TimeModel rebuild(void Function(TimeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeModelBuilder toBuilder() => new TimeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeModel && hour == other.hour && minute == other.minute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jc(_$hash, minute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeModel')
          ..add('hour', hour)
          ..add('minute', minute))
        .toString();
  }
}

class TimeModelBuilder implements Builder<TimeModel, TimeModelBuilder> {
  _$TimeModel? _$v;

  int? _hour;
  int? get hour => _$this._hour;
  set hour(int? hour) => _$this._hour = hour;

  int? _minute;
  int? get minute => _$this._minute;
  set minute(int? minute) => _$this._minute = minute;

  TimeModelBuilder() {
    TimeModel._setDefaults(this);
  }

  TimeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hour = $v.hour;
      _minute = $v.minute;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeModel;
  }

  @override
  void update(void Function(TimeModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeModel build() => _build();

  _$TimeModel _build() {
    final _$result = _$v ??
        new _$TimeModel._(
            hour: BuiltValueNullFieldError.checkNotNull(
                hour, r'TimeModel', 'hour'),
            minute: BuiltValueNullFieldError.checkNotNull(
                minute, r'TimeModel', 'minute'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
