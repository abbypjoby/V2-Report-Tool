import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v2_sales_report_old/domain/auth/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required String id,
  }) = _User;
}
