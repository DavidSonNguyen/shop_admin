import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_admin/features/areas/business/bloc.dart';
import 'package:shop_admin/features/areas/business/events.dart';
import 'package:shop_admin/features/areas/model/area.dart';
import 'package:shop_admin/features/areas/state.dart';
import 'package:shop_admin/ui/app_drawer.dart';
import 'package:shop_admin/ui/pages/calendar_page.dart';
import 'package:shop_admin/ui/pages/yard_price_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late AnimationController controller;
  late AreaBloc areaBloc;
  final pageController = PageController();

  @override
  void didChangeDependencies() {
    areaBloc = BlocProvider.of<AreaBloc>(context);
    areaBloc.add(GetAreasEvent());
    super.didChangeDependencies();
  }

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
            AppDrawer(
              minWidth: 200.0,
              drawer: (BuildContext context, AnimationController controller) {
                this.controller = controller;
                return Column(
                  mainAxisSize: MainAxisSize.max,
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
                    const Expanded(child: SizedBox.shrink()),
                    Container(
                      height: 50.0,
                      padding: const EdgeInsets.all(4.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: BlocSelector<AreaBloc, AreaState, Area?>(
                          bloc: areaBloc,
                          selector: (state) {
                            if (state.areas.isEmpty) {
                              return null;
                            }
                            if (state.selectedAreaId.isEmpty) {
                              return state.areas.values.first;
                            }
                            return state.areas[state.selectedAreaId];
                          },
                          builder: (context, selectedArea) {
                            if (selectedArea == null) {
                              return Text('Chưa chọn khu vực');
                            }
                            return Text(selectedArea.city);
                          },
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
