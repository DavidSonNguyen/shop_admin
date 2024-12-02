import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_admin/model/time_model.dart';

part 'yard_slot.g.dart';

// {"from":"06:00:00",
// "id":"875c7b1f-7f9a-471d-bb58-04c0b7d19719",
// "price_monthly":"80000.0",
// "price_walk_in":90000.0,
// "to":"17:00:00",
// "week_day":1,
// "yard_id":"98877262-07d1-11ef-9a63-acde48001122"},

abstract class YardSlot implements Built<YardSlot, YardSlotBuilder> {
  YardSlot._();

  String get id;

  BuiltList<String> get mergeIds;

  String get yardId;

  TimeModel get from;

  TimeModel get to;

  int get weekDay;

  int? get mergedToWeekDay;

  double get priceMonthly;

  double get priceHourly;

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(YardSlotBuilder b) =>
      b..mergeIds = ListBuilder<String>();

  bool canAppend(YardSlot other) {
    return other.weekDay == weekDay &&
        other.priceHourly == priceHourly &&
        other.priceMonthly == priceMonthly &&
        other.from == to;
  }

  YardSlot append(YardSlot other) {
    if (canAppend(other)) {
      return rebuild(
        (updates) => updates
          ..to = other.to.toBuilder()
          ..mergeIds = ListBuilder<String>([
            ...mergeIds,
            ...[other.id],
          ]),
      );
    }
    return this;
  }

  bool canMergeWeekDay(YardSlot other) {
    final result = other.priceMonthly == priceMonthly &&
        other.priceHourly == priceHourly &&
        other.from == from &&
        other.to == to &&
        other.yardId == yardId &&
        other.weekDay - weekDay == 1;
    return result && other.weekDay - (mergedToWeekDay ?? weekDay) == 1;
  }

  YardSlot mergeWeekDay(YardSlot other) {
    if (canMergeWeekDay(other)) {
      return rebuild(
        (updates) =>
            updates..mergedToWeekDay = (other.mergedToWeekDay ?? other.weekDay),
      );
    }
    return this;
  }

  factory YardSlot([Function(YardSlotBuilder) updates]) = _$YardSlot;

  factory YardSlot.fromJson(Map<String, dynamic> data) {
    return YardSlot(
      (updates) => updates
        ..id = data['id']
        ..yardId = data['yard_id']
        ..from = TimeModel.fromFormat(data['from']).toBuilder()
        ..to = TimeModel.fromFormat(data['to']).toBuilder()
        ..weekDay = data['week_day']
        ..priceHourly = data['price_walk_in']
        ..priceMonthly = data['price_monthly'],
    );
  }
}
