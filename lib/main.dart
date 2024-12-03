import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_admin/business/blocs/app_bloc.dart';
import 'package:shop_admin/business/repository/repository_impl.dart';
import 'package:shop_admin/features/areas/business/bloc.dart';
import 'package:shop_admin/features/areas/repository/repository_impl.dart';
import 'package:shop_admin/features/areas/repository/services/area_main_service_impl.dart';
import 'package:shop_admin/features/areas/state.dart';
import 'package:shop_admin/routes/app_routes.dart';
import 'package:shop_admin/service/app_service_impl.dart';
import 'package:shop_admin/service/client_services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (context) => AppBloc(
            repository: AppRepositoryImpl(
              service: AppServiceImpl(
                AppServiceClient(),
              ),
            ),
          ),
        ),
        BlocProvider<AreaBloc>(
          create: (context) => AreaBloc(
            AreaState(),
            AreaRepositoryImpl(
              areaMainService: AreaMainServiceImpl(
                AppServiceClient(),
              ),
            ),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('vi'),
      ],
      routerConfig: AppRoutes.routes,
    );
  }
}
