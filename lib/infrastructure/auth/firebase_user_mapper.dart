import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:v2_sales_report_old/domain/auth/user.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(id: uid);
  }
}
