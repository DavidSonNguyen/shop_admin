import 'package:built_value/built_value.dart';
import 'package:shop_admin/model/enums.dart';

part 'status.g.dart';

abstract class Status implements Built<Status, StatusBuilder> {
  Status._();

  factory Status([void Function(StatusBuilder b) updates]) = _$Status;

  LoadingStatus get loadingStatus;

  String? get message;

  factory Status.idle() => Status(
        (b) => b..loadingStatus = LoadingStatus.idle,
      );

  factory Status.loading() => Status(
        (b) => b..loadingStatus = LoadingStatus.loading,
      );

  factory Status.success({String? message}) => Status(
        (b) => b..loadingStatus = LoadingStatus.success,
      );

  factory Status.error({String? message}) => Status(
        (b) => b
          ..loadingStatus = LoadingStatus.error
          ..message = message,
      );
}
