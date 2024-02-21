import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class HeadingProvider with ChangeNotifier {
  AppState headingState = AppState.loading;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Eksekusi fungsi dari home service untuk ambil FAQ
  void getHeadingData() async {
    try {
      headingState = AppState.loading;
      notifyListeners();

      // faqData = await homeService.getFaq();

      await Future.delayed(const Duration(seconds: 2));

      headingState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      headingState = AppState.failed;
      notifyListeners();
    }
  }
}
