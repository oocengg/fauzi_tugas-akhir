import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class DaftarKuotaDosenProvider with ChangeNotifier {
  AppState daftarKutoaDosenState = AppState.loading;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Eksekusi fungsi dari daftar kutoa dosen service untuk ambil Data
  void getDaftarKuotaDosenData() async {
    try {
      daftarKutoaDosenState = AppState.loading;
      notifyListeners();

      // faqData = await homeaService.getFaq();

      await Future.delayed(const Duration(seconds: 2));

      daftarKutoaDosenState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      daftarKutoaDosenState = AppState.failed;
      notifyListeners();
    }
  }
}
