import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_admin/features/areas/business/bloc.dart';
import 'package:shop_admin/features/areas/business/events.dart';
import 'package:shop_admin/features/areas/state.dart';
import 'package:shop_admin/model/enums.dart';
import 'package:shop_admin/model/status.dart';

class AreaView extends StatelessWidget {
  const AreaView({super.key});

  @override
  Widget build(BuildContext context) {
    final areaBloc = BlocProvider.of<AreaBloc>(context);
    final event = GetAreasEvent();
    areaBloc.add(event);
    return BlocBuilder<AreaBloc, AreaState>(builder: (context, state) {
      final loadingState = state.statuses[event.getStatusKey()] ?? Status.idle();
      if (loadingState.loadingStatus == LoadingStatus.loading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (loadingState.loadingStatus == LoadingStatus.error) {
        return const Center(
          child: Text('Error'),
        );
      }
      return ListView.builder(
        shrinkWrap: true,
        itemCount: state.areas.length,
        itemBuilder: (context, index) {
          final area = state.areas[index];
          return ListTile(
            title: Text(area?.description ?? ''),
            subtitle: Text(area?.city ?? ''),
          );
        },
      );
    });
  }
}
