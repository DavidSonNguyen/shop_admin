import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_admin/model/enums.dart';
import 'package:shop_admin/model/yard.dart';
import 'package:shop_admin/model/yard_slot.dart';

part 'state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  AppState._();

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  static void _initializeBuilder(AppStateBuilder b) {
    b
      ..yards = MapBuilder<String, Yard>()
      ..yardSlots = MapBuilder<String, YardSlot>()
      ..yardSlotIdsByYardId = MapBuilder<String, BuiltSet<String>>()
      ..updateSlotDetailsStatus = LoadingStatus.idle;
  }

  BuiltMap<String, Yard> get yards;

  // yardId: yard slot
  BuiltMap<String, BuiltSet<String>> get yardSlotIdsByYardId;

  BuiltMap<String, YardSlot> get yardSlots;

  Object? get updateSlotDetailsError;

  LoadingStatus get updateSlotDetailsStatus;
}
