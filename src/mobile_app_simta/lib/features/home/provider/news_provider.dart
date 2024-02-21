import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class NewsProvider with ChangeNotifier {
  AppState newsState = AppState.loading;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Eksekusi fungsi dari home service untuk ambil FAQ
  void getNewsData() async {
    try {
      newsState = AppState.loading;
      notifyListeners();

      // faqData = await homeService.getFaq();

      await Future.delayed(const Duration(seconds: 2));

      newsState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      newsState = AppState.failed;
      notifyListeners();
    }
  }
}
