import 'package:flutter/material.dart';

import 'package:task/features/dashboard/presentation/screens/utils/dashboard_strings.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(backgroundColor: Colors.black,),
      appBar: AppBar(
        title: const Text(DashBoardString.appBarHeader),
      ),
    );
  }
}
