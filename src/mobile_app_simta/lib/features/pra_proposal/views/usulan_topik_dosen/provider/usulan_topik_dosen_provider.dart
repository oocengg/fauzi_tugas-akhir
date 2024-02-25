import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class UsulanTopikDosenProvider with ChangeNotifier {
  AppState applyFilterState = AppState.initial;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Data Inputan Bimbingan
  List<String> listDosenPengusul = [
    'Habibie Ed Dien, S.Kom., M.T.',
    'Moch Zawaruddin Abdullah, S.ST., M.Kom.',
    'Moch',
    'Adam',
    'Lala',
    'Jiko',
  ];
  List<String> listJenisTopik = [
    'Pengembangan',
    'Penelitian',
  ];
  List<String> listTersedia = [
    'Tersedia',
    'Sudah Diambil',
    'Dipilih',
  ];

  String? dosenPengusul;
  String? jenisTopik;
  String? ketersediaan;

  // Eksekusi fungsi dari bimbingasn service untuk ambil Data Bimbingan
  // void getLogBimbinganData() async {
  //   try {
  //     logBimbinganState = AppState.loading;
  //     notifyListeners();

  //     // faqData = await homeService.getFaq();

  //     await Future.delayed(const Duration(seconds: 2));

  //     logBimbinganState = AppState.loaded;
  //     notifyListeners();
  //   } catch (e) {
  //     logBimbinganState = AppState.failed;
  //     notifyListeners();
  //   }
  // }

  // Fungsi untukMenerapkanFilter
  Future<void> applyFilter(BuildContext context) async {
    try {
      applyFilterState = AppState.loading;
      notifyListeners();

      await Future.delayed(const Duration(seconds: 2));

      if (context.mounted) {
        Navigator.pop(context);
      }

      applyFilterState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      applyFilterState = AppState.failed;
      notifyListeners();
    }
  }

  // Eksekusi fungsi clear Data Bimbingan
  void clearDataBimbingan() async {
    dosenPengusul = null;
    ketersediaan = null;
    jenisTopik = null;
  }
}
