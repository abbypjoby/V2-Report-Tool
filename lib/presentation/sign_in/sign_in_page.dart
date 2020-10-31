import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v2_sales_report_old/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:v2_sales_report_old/injection.dart';
import 'package:v2_sales_report_old/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  static const String route = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
