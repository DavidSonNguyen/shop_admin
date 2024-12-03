import 'package:shop_admin/business/repository/repository.dart';
import 'package:shop_admin/model/slot_detail_request.dart';
import 'package:shop_admin/model/yard_slot.dart';
import 'package:shop_admin/service/app_service.dart';

class AppRepositoryImpl implements AppRepository {
  AppRepositoryImpl({required AppService service}) : _service = service;

  final AppService _service;

  @override
  Future<List<YardSlot>> getSlotDetail(String yardId) {
    return _service.getSlotDetail(yardId);
  }

  @override
  Future<void> updateSlotDetails(List<SlotDetailRequest> slotDetails) {
    return _service.updateSlotDetails(slotDetails);
  }
}
