import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class UjianSeminarProposalProvider with ChangeNotifier {
  // Selected Index untuk Lihat section
  int selectedIndex = 0;

  AppState ujianSeminarProposalState = AppState.loading;

  // Item Section
  final List<String> itemSection = [
    'Jadwal Ujian',
    'Hasil Seminar',
    'Revisi Proposal',
    'Lampiran Final',
  ];

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Set Pages yang dipilih
  void setSelectedIndex(BuildContext context, int index) {
    selectedIndex = index;

    notifyListeners();
  }

  // Eksekusi fungsi dari daftar kutoa dosen service untuk ambil Data
  void getUjianSeminarProposalData() async {
    try {
      ujianSeminarProposalState = AppState.loading;
      notifyListeners();

      // faqData = await homeaService.getFaq();

      await Future.delayed(const Duration(seconds: 2));

      ujianSeminarProposalState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      ujianSeminarProposalState = AppState.failed;
      notifyListeners();
    }
  }
}
