import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_admin/features/areas/business/bloc.dart';
import 'package:shop_admin/features/areas/business/events.dart';

class AreaView extends StatelessWidget {
  const AreaView({super.key});

  @override
  Widget build(BuildContext context) {
    final areaBloc = BlocProvider.of<AreaBloc>(context);
    areaBloc.add(GetAreasEvent());
    return const Text('');
  }
}
