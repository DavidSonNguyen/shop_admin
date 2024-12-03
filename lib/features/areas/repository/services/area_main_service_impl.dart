import 'dart:convert';

import 'package:shop_admin/features/areas/business/repo/area_main_service.dart';
import 'package:shop_admin/features/areas/model/area.dart';
import 'package:shop_admin/service/client_services.dart';

class AreaMainServiceImpl implements AreaMainService {
  final AppServiceClient appService;

  AreaMainServiceImpl(this.appService);

  @override
  Future<Map<String, Area>> getAreas() async {
    final response = await appService.getRequest('/areas/');
    print('Response: ${response.body}');
    final data = json.decode(response.body);
    final map = <String, Area>{};
    for (final item in data) {
      final area = Area.fromJson(item);
      map[area.id] = area;
    }
    return map;
  }
}
