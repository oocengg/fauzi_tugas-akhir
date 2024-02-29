import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class PendaftaranSeminarProposalProvider with ChangeNotifier {
  AppState pendaftaranSeminarProposalState = AppState.loading;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Eksekusi fungsi dari daftar kutoa dosen service untuk ambil Data
  void getPendaftaranSeminarData() async {
    try {
      pendaftaranSeminarProposalState = AppState.loading;
      notifyListeners();

      // faqData = await homeaService.getFaq();

      await Future.delayed(const Duration(seconds: 2));

      pendaftaranSeminarProposalState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      pendaftaranSeminarProposalState = AppState.failed;
      notifyListeners();
    }
  }
}
