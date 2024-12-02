import 'package:built_value/built_value.dart';

part 'slot_detail_request.g.dart';

abstract class SlotDetailRequest
    implements Built<SlotDetailRequest, SlotDetailRequestBuilder> {
  SlotDetailRequest._();

  String get yardSlotId;

  double get priceMonthly;

  double get priceHourly;

  factory SlotDetailRequest([void Function(SlotDetailRequestBuilder) updates]) =
      _$SlotDetailRequest;

  factory SlotDetailRequest.init({
    required String yardSlotId,
    required double priceMonthly,
    required double priceHourly,
  }) {
    return SlotDetailRequest(
      (b) => b
        ..yardSlotId = yardSlotId
        ..priceMonthly = priceMonthly
        ..priceHourly = priceHourly,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'slot_id': yardSlotId,
      'price_monthly': priceMonthly,
      'price_walk_in': priceHourly,
    };
  }
}
