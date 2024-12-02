import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    Key? key,
    this.alignment = Alignment.centerLeft,
    required this.drawer,
    this.minWidth,
    this.drawerVisibleKey,
    this.onDrawerChanged,
    this.backgroundColor,
  }) : super(key: key);

  final Key? drawerVisibleKey;
  final Alignment alignment;
  final Widget Function(
    BuildContext context,
    AnimationController controller,
  ) drawer;
  final double? minWidth;
  final Function(bool)? onDrawerChanged;
  final Color? backgroundColor;

  @override
  State<StatefulWidget> createState() {
    return _StreamingDrawerState();
  }
}

class _StreamingDrawerState extends State<AppDrawer>
    with TickerProviderStateMixin {
  late AnimationController _drawerController;

  final ValueNotifier<bool> visibility = ValueNotifier(false);

  double get width => _drawerController.value * 250.0;

  bool get offState {
    if (_drawerController.status == AnimationStatus.reverse) {
      return true;
    }
    if (widget.minWidth == null) {
      return false;
    }
    return widget.minWidth! >= width;
  }

  @override
  void initState() {
    _drawerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      upperBound: 1.0,
      lowerBound: 0.0,
    );

    _drawerController.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        widget.onDrawerChanged?.call(false);
        visibility.value = false;
      }

      if (status == AnimationStatus.completed) {
        widget.onDrawerChanged?.call(true);
        visibility.value = true;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: AnimatedBuilder(
            animation: _drawerController,
            child: widget.drawer.call(
              context,
              _drawerController,
            ),
            builder: (context, child) {
              return Container(
                color: widget.backgroundColor,
                width: width,
                child: Offstage(
                  offstage: offState,
                  child: child,
                ),
              );
            },
          ),
        ),
        ValueListenableBuilder<bool>(
          valueListenable: visibility,
          builder: (context, visible, _) {
            return Visibility(
              visible: visible,
              child: SizedBox.shrink(key: widget.drawerVisibleKey),
            );
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _drawerController.dispose();
    super.dispose();
  }
}
