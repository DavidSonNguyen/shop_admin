import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_admin/features/areas/business/bloc.dart';
import 'package:shop_admin/features/areas/business/events.dart';
import 'package:shop_admin/features/areas/model/area.dart';
import 'package:shop_admin/features/areas/state.dart';

class AreaView extends StatelessWidget {
  const AreaView({super.key});

  @override
  Widget build(BuildContext context) {
    final areaBloc = BlocProvider.of<AreaBloc>(context);
    return BlocSelector<AreaBloc, AreaState, BuiltList<Area>>(
      selector: (AreaState state) {
        return BuiltList<Area>(state.areas.values);
      },
      builder: (context, areas) {
        if (areas.isEmpty) {
          return Text('Không có sân');
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: areas.length,
          itemBuilder: (context, index) {
            final area = areas[index];
            return GestureDetector(
              onTap: () {
                areaBloc.add(
                  SelectAreaEvent.create(area.id),
                );
                context.pop();
              },
              child: ListTile(
                title: Text(area.street),
                subtitle: Text(area.city),
              ),
            );
          },
        );
      },
    );
  }
}
