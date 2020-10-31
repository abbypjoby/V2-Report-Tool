import 'package:flutter/material.dart';
import 'package:v2_sales_report_old/presentation/report_generator/reports.dart';

import 'inputs.dart';

class Dashboard extends StatelessWidget {
  static const String route = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              FetchInputs(),
              ReportList(),
            ],
          ),
        ),
      ),
    );
  }
}
