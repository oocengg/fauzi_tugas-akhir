import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class MainNotificationProvider with ChangeNotifier {
  AppState mainNotificationState = AppState.loading;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Eksekusi fungsi dari notification service untuk ambil FAQ
  void getMainNotificationData() async {
    try {
      mainNotificationState = AppState.loading;
      notifyListeners();

      // faqData = await homeService.getFaq();

      await Future.delayed(const Duration(seconds: 2));

      mainNotificationState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      mainNotificationState = AppState.failed;
      notifyListeners();
    }
  }
}
