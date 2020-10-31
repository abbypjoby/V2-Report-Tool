import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:v2_sales_report_old/injection.dart';
import 'package:v2_sales_report_old/presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
