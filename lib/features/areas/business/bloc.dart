import 'package:bloc/bloc.dart';
import 'package:shop_admin/features/areas/business/events.dart';
import 'package:shop_admin/features/areas/repository/repository.dart';
import 'package:shop_admin/features/areas/state.dart';
import 'package:shop_admin/model/status.dart';

class AreaBloc extends Bloc<AreaEvent, AreaState> {
  final AreaRepository areaRepository;

  void _handleEvent(
    AreaEvent event,
    Emitter<AreaState> emit, {
    void Function()? onAsync,
    AreaState Function()? onSuccess,
    AreaState Function(dynamic error)? onError,
  }) async {
    try {
      emit(
        state.rebuild(
          (b) => b..status[event.runtimeType.toString()] = Status.loading(),
        ),
      );
      onAsync?.call();
      emit(
        (onSuccess?.call() ?? state).rebuild(
          (b) => b..status[event.runtimeType.toString()] = Status.success(),
        ),
      );
    } catch (e) {
      emit(
        (onError?.call(e) ?? state).rebuild(
          (b) => b
            ..status[event.runtimeType.toString()] = Status.error(
              message: e.toString(),
            ),
        ),
      );
    } finally {
      emit(
        state.rebuild(
          (b) => b..status.remove(event.runtimeType.toString()),
        ),
      );
    }
  }

  AreaBloc(super.initialState, this.areaRepository) {
    on<GetAreasEvent>((event, emit) async {
      _handleEvent(event, emit, onAsync: () async {
        final areas = await areaRepository.getAreas();
        emit(
          state.rebuild(
            (b) => b..areas.addAll(areas),
          ),
        );
      });
    });
  }
}
