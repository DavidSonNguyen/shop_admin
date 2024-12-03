import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_admin/business/blocs/app_bloc.dart';
import 'package:shop_admin/features/areas/business/bloc.dart';
import 'package:shop_admin/features/areas/repository/repository_impl.dart';
import 'package:shop_admin/features/areas/repository/services/area_main_service_impl.dart';
import 'package:shop_admin/features/areas/state.dart';
import 'package:shop_admin/features/areas/view/area_view.dart';
import 'package:shop_admin/repository/repository_impl.dart';
import 'package:shop_admin/service/app_service_impl.dart';
import 'package:shop_admin/service/client_services.dart';
import 'package:shop_admin/ui/app_drawer.dart';
import 'package:shop_admin/ui/pages/calendar_page.dart';
import 'package:shop_admin/ui/pages/yard_price_page.dart';
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
    return const MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('vi'),
      ],
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late AnimationController controller;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            if (controller.isCompleted) {
              controller.reverse();
            } else {
              controller.forward();
            }
          },
          child: const Icon(Icons.menu_sharp),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            const AreaView(),
            AppDrawer(
              minWidth: 200.0,
              drawer: (BuildContext context, AnimationController controller) {
                this.controller = controller;
                return ListView(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        controller.reverse();
                        pageController.jumpToPage(0);
                      },
                      child: Container(
                        height: 50.0,
                        padding: const EdgeInsets.all(4.0),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Lịch'),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.black12,
                      thickness: 2.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.reverse();
                        pageController.jumpToPage(1);
                      },
                      child: Container(
                        height: 50.0,
                        padding: const EdgeInsets.all(4.0),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Giá sân'),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                children: const [
                  CalendarPage(),
                  YardPricePage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
