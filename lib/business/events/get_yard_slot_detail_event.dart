import 'package:built_value/built_value.dart';
import 'package:shop_admin/business/events/app_event.dart';

part 'get_yard_slot_detail_event.g.dart';

abstract class GetYardSlotDetailEvent extends AppEvent
    implements Built<GetYardSlotDetailEvent, GetYardSlotDetailEventBuilder> {
  GetYardSlotDetailEvent._();

  String get yardId;

  factory GetYardSlotDetailEvent(
          [void Function(GetYardSlotDetailEventBuilder) updates]) =
      _$GetYardSlotDetailEvent;
}
