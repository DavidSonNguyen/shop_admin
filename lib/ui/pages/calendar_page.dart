import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:shop_admin/utils/time_utils.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CalendarPageState();
  }
}

class _CalendarPageState extends State<CalendarPage> with AutomaticKeepAliveClientMixin {
  final eventController = EventController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  var from = DateTime.now();
  var to = DateTime.now();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CalendarControllerProvider(
      controller: eventController,
      child: WeekView(
        pageTransitionCurve: Curves.linear,
        startHour: 6,
        weekNumberBuilder: (time) {
          return const SizedBox();
        },
        timeLineBuilder: (time) {
          return Text('${time.hour} giờ');
        },
        onClickCalendar: (time) {
          time.weekday;
          from = time;
          to = time.add(const Duration(hours: 2));
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Đặt lịch'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText: 'Tên',
                      ),
                    ),
                    TextField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        labelText: 'Số điện thoại',
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text('Khung giờ: ${from.hour}h - ${to.hour}h'),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      if (nameController.text.isEmpty ||
                          phoneController.text.isEmpty) {
                        return;
                      }
                      eventController.add(
                        CalendarEventData(
                          title: nameController.text,
                          description: phoneController.text,
                          date: from,
                          startTime: from,
                          endTime: to,
                        ),
                      );
                      nameController.clear();
                      phoneController.clear();
                      Navigator.pop(context);
                    },
                    child: const Text('Tạo'),
                  ),
                ],
              );
            },
          );
        },
        weekDayBuilder: (date) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  TimeUtils.dayOfWeek(date),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Text('Ngày ${date.day}'),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
