import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class ProposalSayaProvider with ChangeNotifier {
  AppState proposalSayaState = AppState.loading;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Eksekusi fungsi dari daftar kutoa dosen service untuk ambil Data
  void getProposalSayaData() async {
    try {
      proposalSayaState = AppState.loading;
      notifyListeners();

      // faqData = await homeaService.getFaq();

      await Future.delayed(const Duration(seconds: 2));

      proposalSayaState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      proposalSayaState = AppState.failed;
      notifyListeners();
    }
  }
}
