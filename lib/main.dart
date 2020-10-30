import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:v2_sales_report_old/injection.dart';
import 'package:v2_sales_report_old/model.dart';
import 'package:v2_sales_report_old/presentation/core/app_widget.dart';
import 'package:v2_sales_report_old/presentation/report_generator/inputs.dart';
import 'package:v2_sales_report_old/presentation/report_generator/reports.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
