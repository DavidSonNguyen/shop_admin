import 'package:built_collection/built_collection.dart';
import 'package:shop_admin/business/events/app_event.dart';
import 'package:bloc/bloc.dart';
import 'package:shop_admin/business/events/get_yard_slot_detail_event.dart';
import 'package:shop_admin/business/events/update_yard_slot_detail_event.dart';
import 'package:shop_admin/business/state.dart';
import 'package:shop_admin/model/enums.dart';
import 'package:shop_admin/model/yard_slot.dart';
import 'package:shop_admin/repository/repository.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required AppRepository repository})
      : _repository = repository,
        super(AppState()) {
    on<AppEvent>((event, emit) async {
      try {
        if (event is GetYardSlotDetailEvent) {
          final yardSlots = await _repository.getSlotDetail(event.yardId);
          final currentYardSlots = state.yardSlots.toBuilder();

          final currentYardSlotIds =
              state.yardSlotIdsByYardId[event.yardId]?.toBuilder() ??
                  SetBuilder<String>();
          currentYardSlots.addAll(
            {for (var e in yardSlots) e.id: e},
          );
          currentYardSlotIds.addAll(currentYardSlots.build().keys);
          emit(
            state.rebuild(
              (b) => b
                ..yardSlots = currentYardSlots
                ..yardSlotIdsByYardId[event.yardId] =
                    currentYardSlotIds.build(),
            ),
          );
        }
      } catch (e) {
        print(e);
      }
    });
    on<UpdateYardSlotDetail>((event, emit) async {
      try {
        emit(
          state.rebuild(
            (b) => b..updateSlotDetailsStatus = LoadingStatus.loading,
          ),
        );

        await _repository.updateSlotDetails(
          event.slots.toList(),
        );

        final yardSlots = <String, YardSlot>{};
        for (var slot in event.slots) {
          yardSlots[slot.yardSlotId] =
              state.yardSlots[slot.yardSlotId]!.rebuild(
            (b) => b
              ..priceHourly = slot.priceHourly
              ..priceMonthly = slot.priceMonthly,
          );
        }
        emit(
          state.rebuild(
            (b) => b
              ..yardSlots.addAll(yardSlots)
              ..updateSlotDetailsStatus = LoadingStatus.success,
          ),
        );
      } catch (e) {
        emit(
          state.rebuild(
            (b) => b
              ..updateSlotDetailsStatus = LoadingStatus.error
              ..updateSlotDetailsError = e,
          ),
        );
      }
    });
  }

  final AppRepository _repository;
}
