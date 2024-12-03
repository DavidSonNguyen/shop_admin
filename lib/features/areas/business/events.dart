import 'package:built_value/built_value.dart';
import 'package:shop_admin/business/events/app_event.dart';

part 'events.g.dart';

abstract class AreaEvent extends AppEvent {}

abstract class GetAreasEvent extends AreaEvent
    implements Built<GetAreasEvent, GetAreasEventBuilder> {
  GetAreasEvent._();

  factory GetAreasEvent([void Function(GetAreasEventBuilder b) updates]) =
      _$GetAreasEvent;
}
