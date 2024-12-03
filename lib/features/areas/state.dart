import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_admin/features/areas/model/area.dart';
import 'package:shop_admin/model/status.dart';

part 'state.g.dart';

abstract class AreaState implements Built<AreaState, AreaStateBuilder> {
  AreaState._();

  BuiltMap<String, Area> get areas;

  BuiltMap<String, Status> get status;

  // init builder
  static void _initializeBuilder(AreaStateBuilder builder) => builder
    ..areas = MapBuilder<String, Area>()
    ..status = MapBuilder<String, Status>();

  factory AreaState([void Function(AreaStateBuilder b) updates]) = _$AreaState;
}
