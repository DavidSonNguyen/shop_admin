import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:shop_admin/business/events/app_event.dart';
import 'package:shop_admin/model/slot_detail_request.dart';

part 'update_yard_slot_detail_event.g.dart';

abstract class UpdateYardSlotDetail
    implements Built<UpdateYardSlotDetail, UpdateYardSlotDetailBuilder>, AppEvent {
  UpdateYardSlotDetail._();

  BuiltList<SlotDetailRequest> get slots;

  factory UpdateYardSlotDetail(
          [void Function(UpdateYardSlotDetailBuilder) updates]) =
      _$UpdateYardSlotDetail;
}
