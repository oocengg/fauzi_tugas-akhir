import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class NotificationProvider with ChangeNotifier {
  AppState notificationState = AppState.loading;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Eksekusi fungsi dari notification service untuk ambil FAQ
  void getNotificationData() async {
    try {
      notificationState = AppState.loading;
      notifyListeners();

      // faqData = await homeService.getFaq();

      await Future.delayed(const Duration(seconds: 2));

      notificationState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      notificationState = AppState.failed;
      notifyListeners();
    }
  }
}
