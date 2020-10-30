import 'package:auto_route/auto_route_annotations.dart';
import 'package:v2_sales_report_old/presentation/report_generator/dashboard.dart';
import 'package:v2_sales_report_old/presentation/sign_in/sign_in_page.dart';
import 'package:v2_sales_report_old/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: SignInPage),
      MaterialRoute(page: Dashboard)
    ])
class $Router {}
