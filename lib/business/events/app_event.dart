abstract class AppEvent {
  String getStatusKey([String? suffix]) =>
      runtimeType.toString() + (suffix ?? '');
}