import 'package:built_value/built_value.dart';

part 'time_model.g.dart';

abstract class TimeModel implements Built<TimeModel, TimeModelBuilder> {
  TimeModel._();

  int get hour;

  int get minute;

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(TimeModelBuilder b) => b
    ..hour = 0
    ..minute = 0;

  factory TimeModel([Function(TimeModelBuilder) updates]) = _$TimeModel;

  factory TimeModel.fromFormat(String format) {
    final list = format.split(':');
    return TimeModel(
      (updates) => updates
        ..hour = int.tryParse(list[0])
        ..minute = int.tryParse(list[1]),
    );
  }
}
