import 'package:shop_admin/features/areas/business/repo/area_main_service.dart';
import 'package:shop_admin/features/areas/model/area.dart';
import 'package:shop_admin/features/areas/repository/repository.dart';

class AreaRepositoryImpl implements AreaRepository {
  final AreaMainService areaMainService;

  AreaRepositoryImpl({required this.areaMainService});

  @override
  Future<Map<String, Area>> getAreas() {
    return areaMainService.getAreas();
  }
}
