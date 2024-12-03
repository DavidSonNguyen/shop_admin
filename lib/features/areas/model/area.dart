import 'package:built_value/built_value.dart';

part 'area.g.dart';

abstract class Area implements Built<Area, AreaBuilder> {
  Area._();

  String get id;

  String get name;

  String get location;

  String get description;

  String get country;

  String get city;

  String get district;

  String get ward;

  String get street;

  static void _initializeBuilder(AreaBuilder builder) => builder
    ..name = ''
    ..location = ''
    ..description = ''
    ..country = ''
    ..city = ''
    ..district = ''
    ..ward = ''
    ..street = '';

  factory Area.init(String id) {
    return Area(
      (builder) => builder..id = id,
    );
  }

  factory Area([void Function(AreaBuilder b) updates]) = _$Area;

  factory Area.fromJson(Map<String, dynamic> json) {
    final fields = json['fields'] ?? {};
    return Area(
      (b) => b
        ..id = json['pk'] ?? ''
        ..name = json['name'] ?? ''
        ..location = fields['location'] ?? ''
        ..description = fields['description'] ?? ''
        ..country = fields['country'] ?? ''
        ..city = fields['city'] ?? ''
        ..district = fields['district'] ?? ''
        ..ward = fields['ward'] ?? ''
        ..street = fields['street'] ?? '',
    );
  }
}
