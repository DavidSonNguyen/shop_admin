import 'package:shop_admin/model/slot_detail_request.dart';
import 'package:shop_admin/model/yard_slot.dart';

abstract class AppService {
  Future<List<YardSlot>> getSlotDetail(String yardId);

  Future<void> updateSlotDetails(List<SlotDetailRequest> slotDetails);
}
