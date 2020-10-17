import 'package:flutter/cupertino.dart';

class Model extends ChangeNotifier {
  String groupId = '';
  String startDate = '';
  String endDate = '';

  void setGroupId(String groupId) {
    this.groupId = groupId;
    notifyListeners();
  }

  void setStartDate(String startDate) {
    this.startDate = startDate;
    notifyListeners();
  }

  void setEndDate(String endDate) {
    this.endDate = endDate;
    notifyListeners();
  }

  // Model({this.groupId, this.startDate, this.endDate});
}
