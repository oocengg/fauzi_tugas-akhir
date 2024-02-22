import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';

class LogBimbinganProvider with ChangeNotifier {
  AppState logBimbinganState = AppState.loading;
  AppState addLogBimbinganState = AppState.initial;

  // List<FaqResponseModel> faqData = [];

  // HomeService homeService = HomeService();

  // Data Inputan Bimbingan
  List<String> listDosenPembimbing = [
    'Habibie Ed Dien, S.Kom., M.T.',
    'Moch Zawaruddin Abdullah, S.ST., M.Kom.',
  ];
  List<String> listMediaBimbingan = [
    'Offline',
    'Online Zoom',
    'WhatsApp',
  ];
  final GlobalKey<FormState> logBimbinganFormKey = GlobalKey<FormState>();
  String? dosenPembimbing;
  String? mediaBimbingan;
  DateTime tanggalBimbingan = DateTime.now();
  final TextEditingController topikBimbinganController =
      TextEditingController();
  final TextEditingController deskripsiBimbinganController =
      TextEditingController();

  // Eksekusi fungsi dari bimbingasn service untuk ambil Data Bimbingan
  void getLogBimbinganData() async {
    try {
      logBimbinganState = AppState.loading;
      notifyListeners();

      // faqData = await homeService.getFaq();

      await Future.delayed(const Duration(seconds: 2));

      logBimbinganState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      logBimbinganState = AppState.failed;
      notifyListeners();
    }
  }

  // Fungsi Push Log Bimbingan Kedalam Database
  Future<void> pushLogBimbingan(BuildContext context) async {
    try {
      addLogBimbinganState = AppState.loading;
      notifyListeners();

      await Future.delayed(const Duration(seconds: 2));

      if (context.mounted) {
        clearDataBimbingan();

        Navigator.pop(context);

        getLogBimbinganData();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Row(
              children: [
                Icon(
                  FontAwesomeIcons.circleCheck,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: Text('Sukses, bimbingan berhasil ditambahkan.')),
              ],
            ),
            backgroundColor: AppColors.success500,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }

      addLogBimbinganState = AppState.loaded;
      notifyListeners();
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Row(
              children: [
                Icon(
                  FontAwesomeIcons.circleXmark,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(child: Text('Maaf, bimbingan gagal ditambahkan.')),
              ],
            ),
            backgroundColor: AppColors.success500,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
      addLogBimbinganState = AppState.failed;
      notifyListeners();
    }
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      tanggalBimbingan = picked;
    }
    notifyListeners();
  }

  // Fungsi fungsi untuk validasi inputan
  String? validateTopikBimbingan(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return 'Topik tidak boleh kosong.';
    }

    return null; // validasi berhasil
  }

  String? validateDeskripsiBimbingan(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return 'Deskripsi tidak boleh kosong.';
    }

    return null; // validasi berhasil
  }

  // Eksekusi fungsi clear Data Bimbingan
  void clearDataBimbingan() async {
    dosenPembimbing = null;
    mediaBimbingan = null;
    tanggalBimbingan = DateTime.now();
    topikBimbinganController.clear();
    deskripsiBimbinganController.clear();
  }
}
