import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v2_sales_report_old/application/auth/auth_bloc.dart';
import 'package:v2_sales_report_old/presentation/report_generator/dashboard.dart';
import 'package:v2_sales_report_old/presentation/sign_in/sign_in_page.dart';

class SplashPage extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            log('Initial State');
          },
          authenticated: (_) {
            log('Authentication Successful, opening report page');
            Navigator.popAndPushNamed(context, Dashboard.route);
          },
          unauthenticated: (_) {
            log('Unauthenticated, opening Sign In Page');
            Navigator.popAndPushNamed(context, SignInPage.route);
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
