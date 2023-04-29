import 'package:bank/components/sections/account_actions.dart';
import 'package:bank/components/sections/header.dart';
import 'package:flutter/material.dart';

import '../components/sections/account_points.dart';
import '../components/sections/recent_activity.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            Header(),
            RecentActivity(),
            AccountActions(),
            AccountPoints(),
          ],
        ),
      ),
    );
  }
}
