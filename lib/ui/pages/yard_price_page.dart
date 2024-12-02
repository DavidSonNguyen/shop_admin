import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shop_admin/business/blocs/app_bloc.dart';
import 'package:shop_admin/business/events/get_yard_slot_detail_event.dart';
import 'package:shop_admin/business/events/update_yard_slot_detail_event.dart';
import 'package:shop_admin/business/state.dart';
import 'package:shop_admin/model/enums.dart';
import 'package:shop_admin/model/slot_detail_request.dart';
import 'package:shop_admin/model/yard_slot.dart';
import 'package:shop_admin/ui/snack_bar_widget.dart';

class YardPricePage extends StatefulWidget {
  const YardPricePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _YardPriceState();
  }
}

class _YardPriceState extends State<YardPricePage> {
  final slots = <String, YardSlot>{};
  final weekDaySlots = <int, Set<String>>{};
  final mergeSlots = <String, YardSlot>{};
  var editing = false;
  late AppBloc appBloc;
  final yardId = '98877262-07d1-11ef-9a63-acde48001122';

  final weekNormalMonthlyController = TextEditingController();
  final weekGoldMonthlyController = TextEditingController();
  final weekendMonthlyController = TextEditingController();

  final weekNormalHourlyController = TextEditingController();
  final weekGoldHourlyController = TextEditingController();
  final weekendHourlyController = TextEditingController();

  @override
  void didChangeDependencies() {
    appBloc = BlocProvider.of<AppBloc>(context);
    appBloc.add(
      GetYardSlotDetailEvent(
        (b) => b..yardId = yardId,
      ),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      bloc: appBloc,
      listener: (context, state) {
        if (state.updateSlotDetailsStatus == LoadingStatus.success) {
          setState(() {
            editing = false;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              padding: const EdgeInsets.all(0.0),
              content: SnackBarWidget.success('Update success'),
            ),
          );
        }

        if (state.updateSlotDetailsStatus == LoadingStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              padding: const EdgeInsets.all(0.0),
              content: SnackBarWidget.error(
                'Update failed: ${state.updateSlotDetailsError}',
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.yardSlots.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final yardSlotIds = state.yardSlotIdsByYardId[yardId] ?? BuiltSet();
        final weekNormalSlot = state.yardSlots[yardSlotIds.first]!;
        final weekGoldSlot = state.yardSlots[yardSlotIds.elementAt(1)]!;
        final weekendSlot = state.yardSlots[yardSlotIds.last]!;

        weekNormalMonthlyController.text =
            weekNormalSlot.priceMonthly.toString();
        weekGoldMonthlyController.text = weekGoldSlot.priceMonthly.toString();
        weekendMonthlyController.text = weekendSlot.priceMonthly.toString();
        weekNormalHourlyController.text = weekNormalSlot.priceHourly.toString();
        weekGoldHourlyController.text = weekGoldSlot.priceHourly.toString();
        weekendHourlyController.text = weekendSlot.priceHourly.toString();

        return Column(
          children: [
            Text('Giá sân'),
            Row(
              children: [
                Expanded(
                  child: _buildBox(Text('Thứ')),
                ),
                Expanded(
                  child: _buildBox(Text('Khung giờ')),
                ),
                Expanded(
                  child: _buildBox(Text('Giá Tháng')),
                ),
                Expanded(
                  child: _buildBox(Text('Giá Vãng lai')),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: _buildBox(Text('Thứ 2 - 6'), mergeCell: 2),
                ),
                Expanded(
                  child: Column(
                    children: [
                      _buildBox(Text('6h - 17h')),
                      _buildBox(Text('17h - 22h')),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      _buildBox(
                        _buildEditableField(
                          weekNormalMonthlyController,
                        ),
                      ),
                      _buildBox(
                        _buildEditableField(
                          weekGoldMonthlyController,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      _buildBox(
                        _buildEditableField(
                          weekNormalHourlyController,
                        ),
                      ),
                      _buildBox(
                        _buildEditableField(
                          weekGoldHourlyController,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: _buildBox(Text('T7 - CN')),
                ),
                Expanded(
                  child: _buildBox(Text('6h - 23h')),
                ),
                Expanded(
                  child: _buildBox(
                    _buildEditableField(
                      weekendMonthlyController,
                    ),
                  ),
                ),
                Expanded(
                  child: _buildBox(
                    _buildEditableField(
                      weekendHourlyController,
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  editing = !editing;
                });
              },
              child: Text('Edit'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  editing = false;
                });
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final updateWeekNormalSlot = SlotDetailRequest.init(
                  yardSlotId: weekNormalSlot.id,
                  priceMonthly: double.parse(weekNormalMonthlyController.text),
                  priceHourly: double.parse(weekNormalHourlyController.text),
                );
                final updateWeekGoldSlot = SlotDetailRequest.init(
                  yardSlotId: weekGoldSlot.id,
                  priceMonthly: double.parse(weekGoldMonthlyController.text),
                  priceHourly: double.parse(weekGoldHourlyController.text),
                );
                final updateWeekendSlot = SlotDetailRequest.init(
                  yardSlotId: weekendSlot.id,
                  priceMonthly: double.parse(weekendMonthlyController.text),
                  priceHourly: double.parse(weekendHourlyController.text),
                );
                appBloc.add(
                  UpdateYardSlotDetail(
                    (b) => b
                      ..slots = ListBuilder<SlotDetailRequest>([
                        updateWeekNormalSlot,
                        updateWeekGoldSlot,
                        updateWeekendSlot,
                      ]),
                  ),
                );
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildBox(Widget child, {int mergeCell = 1}) {
    return Container(
      height: 30.0 * mergeCell,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: Center(child: child),
    );
  }

  Widget _buildEditableField(TextEditingController controller) {
    return TextField(
      controller: controller,
      enabled: editing,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: const InputDecoration.collapsed(
        hintText: 'Giá 1 giờ chơi',
      ),
    );
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  final NumberFormat formatter;

  CurrencyInputFormatter({String locale = 'vi_VN'})
      : formatter = NumberFormat.currency(locale: locale);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    try {
      final value = double.parse(newValue.text);
      final formattedValue = formatter.format(value);
      return TextEditingValue(
        text: formattedValue,
        selection: TextSelection.collapsed(offset: formattedValue.length),
      );
    } catch (e) {
      return oldValue;
    }
  }
}
