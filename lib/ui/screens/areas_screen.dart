import 'package:flutter/material.dart';
import 'package:shop_admin/features/areas/view/area_view.dart';

class AreaScreen extends StatelessWidget {
  const AreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Areas'),
      ),
      body: const AreaView(),
    );
  }
}