import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v2_sales_report_old/application/auth/auth_bloc.dart';
import 'package:v2_sales_report_old/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
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
            ExtendedNavigator.of(context).popAndPush(Routes.dashboard);
          },
          unauthenticated: (_) {
            log('Unauthenticated, opening Sign In Page');
            ExtendedNavigator.of(context).popAndPush(Routes.signInPage);
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
