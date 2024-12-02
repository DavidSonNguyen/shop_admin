import 'package:built_value/built_value.dart';
part 'yard.g.dart';

abstract class Yard implements Built<Yard, YardBuilder> {
  Yard._();

  factory Yard([void Function(YardBuilder) updates]) = _$Yard;

  String get id;

  String get name;

  String get address;

  String get phone;

  String get email;

  String get description;

  String get imageUrl;

  String get ownerId;

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(YardBuilder b) => b..imageUrl = '';

}