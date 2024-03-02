import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class SkripsiSayaProvider with ChangeNotifier {
  AppState skripsiSayaState = AppState.loading;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Eksekusi fungsi dari daftar kutoa dosen service untuk ambil Data
  void getSkripsiSayaData() async {
    try {
      skripsiSayaState = AppState.loading;
      notifyListeners();

      // faqData = await homeaService.getFaq();

      await Future.delayed(const Duration(seconds: 10));

      skripsiSayaState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      skripsiSayaState = AppState.failed;
      notifyListeners();
    }
  }
}
