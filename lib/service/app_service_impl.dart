import 'dart:convert';

import 'package:shop_admin/model/slot_detail_request.dart';
import 'package:shop_admin/model/yard_slot.dart';
import 'package:shop_admin/service/app_service.dart';
import 'package:shop_admin/service/client_services.dart';

class AppServiceImpl extends AppService {
  final AppClient _clientServices;

  AppServiceImpl(this._clientServices);

  @override
  Future<List<YardSlot>> getSlotDetail(String yardId) async {
    final response = await _clientServices.getRequest(
      '/get_slot_detail',
      queryParameters: {
        'yard_id': yardId,
      },
    );
    final data = json.decode(response.body);
    return data
        .map<YardSlot>(
          (e) => YardSlot.fromJson(e),
        )
        .toList();
  }

  @override
  Future<void> updateSlotDetails(List<SlotDetailRequest> slotDetails) {
    final listJson = slotDetails.map((e) => e.toJson()).toList();
    return _clientServices.postRequest(
      '/update_yard_slot_detail',
      body: json.encode(
        {'slots': listJson},
      ),
    );
  }
}
