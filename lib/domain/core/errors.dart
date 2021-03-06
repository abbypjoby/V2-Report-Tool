import 'package:v2_sales_report_old/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);
  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at unrecoverable point. Terminating';
    return Error.safeToString('$explanation Failure was : $valueFailure');
  }
}
