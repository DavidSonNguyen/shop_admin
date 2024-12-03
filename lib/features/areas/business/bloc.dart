import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:shop_admin/features/areas/business/events.dart';
import 'package:shop_admin/features/areas/model/area.dart';
import 'package:shop_admin/features/areas/repository/repository.dart';
import 'package:shop_admin/features/areas/state.dart';
import 'package:shop_admin/model/status.dart';

class AreaBloc extends Bloc<AreaEvent, AreaState> {
  final AreaRepository areaRepository;

  FutureOr<void> _handleEvent(
    AreaEvent event,
    Emitter<AreaState> emit, {
    Future Function()? onAsync,
    AreaState Function(dynamic)? onSuccess,
    AreaState Function(dynamic error)? onError,
  }) async {
    try {
      emit(
        state.rebuild(
          (b) => b..statuses[event.runtimeType.toString()] = Status.loading(),
        ),
      );
      final response = await onAsync?.call();
      emit(
        (onSuccess?.call(response) ?? state).rebuild(
          (b) => b..statuses[event.runtimeType.toString()] = Status.success(),
        ),
      );
    } catch (e) {
      emit(
        (onError?.call(e) ?? state).rebuild(
          (b) => b
            ..statuses[event.runtimeType.toString()] = Status.error(
              message: e.toString(),
            ),
        ),
      );
    } finally {
      emit(
        state.rebuild(
          (b) => b..statuses.remove(event.runtimeType.toString()),
        ),
      );
    }
  }

  AreaBloc(super.initialState, this.areaRepository) {
    on<GetAreasEvent>((event, emit) async {
      await _handleEvent(
        event,
        emit,
        onAsync: () {
          return areaRepository.getAreas();
        },
        onSuccess: (response) {
          return state.rebuild(
            (b) => b..areas = MapBuilder<String, Area>(response),
          );
        },
      );
    });
    on<SelectAreaEvent>((event, emit) {
      emit(
        state.rebuild(
          (b) => b..selectedAreaId = event.areaId,
        ),
      );
    });
  }
}
