import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// for handle pre-condition loading app
// change this to stateful
class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BaseState();
  }
}

class _BaseState extends State<BaseScreen> {
  @override
  void didChangeDependencies() {
    Future.microtask(() {
      GoRouter.of(context).go('/home');
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox.shrink(),
      ),
    );
  }
}
