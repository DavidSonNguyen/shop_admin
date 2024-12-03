import 'package:shop_admin/features/areas/model/area.dart';

abstract class AreaMainService {
  Future<Map<String, Area>> getAreas();
}