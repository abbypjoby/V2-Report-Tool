import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:v2_sales_report_old/model.dart';
import 'package:v2_sales_report_old/screens/inputs.dart';
import 'package:v2_sales_report_old/screens/reports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report Generator',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
            child: ChangeNotifierProvider<Model>(
              create: (_) => Model(),
              child: Column(
                children: [
                  FetchInputs(),
                  ReportList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
