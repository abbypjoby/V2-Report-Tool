import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v2_sales_report_old/application/auth/auth_bloc.dart';
import 'package:v2_sales_report_old/injection.dart';
import 'package:v2_sales_report_old/presentation/report_generator/dashboard.dart';
import 'package:v2_sales_report_old/presentation/sign_in/sign_in_page.dart';
import 'package:v2_sales_report_old/presentation/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          SplashPage.route: (context) => SplashPage(),
          SignInPage.route: (context) => SignInPage(),
          Dashboard.route: (context) => Dashboard(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
