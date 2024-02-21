import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class BimbinganProvider with ChangeNotifier {
  AppState bimbinganState = AppState.loading;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Eksekusi fungsi dari bimbingasn service untuk ambil Bimbingan
  void getBimbinganData() async {
    try {
      bimbinganState = AppState.loading;
      notifyListeners();

      // faqData = await homeService.getFaq();

      await Future.delayed(const Duration(seconds: 2));

      bimbinganState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      bimbinganState = AppState.failed;
      notifyListeners();
    }
  }
}
