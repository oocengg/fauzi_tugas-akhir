import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/usulan_topik_dosen/provider/usulan_topik_dosen_provider.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/usulan_topik_dosen/views/filter_topik_screen.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/usulan_topik_dosen/widgets/item_widget/topik_item.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/usulan_topik_dosen/widgets/loading_screen/usulan_topik_dosen_loading.dart';
import 'package:provider/provider.dart';

class UsulanTopikDosenScreen extends StatefulWidget {
  const UsulanTopikDosenScreen({super.key});

  @override
  State<UsulanTopikDosenScreen> createState() => _UsulanTopikDosenScreenState();
}

class _UsulanTopikDosenScreenState extends State<UsulanTopikDosenScreen> {
  onInitCalled() {
    context.read<UsulanTopikDosenProvider>().getUsulanTopikDosenData();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onInitCalled();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Usulan Topik Dosen',
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: AppColors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showFilter(context);
            },
            icon: const Icon(
              FontAwesomeIcons.filter,
              color: AppColors.white,
            ),
          ),
        ],
        backgroundColor: AppColors.primary500,
        shadowColor: AppColors.black.withOpacity(0.2),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          onInitCalled();
        },
        child: Consumer<UsulanTopikDosenProvider>(
          builder: (context, usulanTopikDosenProvider, _) {
            if (usulanTopikDosenProvider.usulanTopikDosenState ==
                AppState.initial) {
              return const SizedBox.shrink();
            } else if (usulanTopikDosenProvider.usulanTopikDosenState ==
                AppState.loading) {
              return const UsulanTopikDosenLoading();
            } else if (usulanTopikDosenProvider.usulanTopikDosenState ==
                AppState.loaded) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  children: [
                    topikItem(
                      context,
                      'Analisis Penggunaan Fitur Notifikasi dalam Aplikasi Mobile Berbasis Flutter untuk untukuntuk',
                      'Habibie Ed Dien, S.Kom., M.T.',
                      'Pengembangan',
                      'Sudah Diambil',
                      ['Mobile Dev', 'Mobile Dev'],
                      'Skripsi ini bertujuan untuk menganalisis bagaimana penggunaan fitur notifikasi dalam aplikasi mobile berbasis Flutter dapat mempengaruhi efisiensi dalam manajemen tugas akhir. Penelitian ini akan mengeksplorasi apakah pemberian notifikasi kepada pengguna aplikasi secara tepat waktu dan relevan dapat meningkatkan kesadaran, partisipasi, dan kepatuhan terhadap tenggat waktu dan tanggung jawab terkait tugas akhir. Hasil dari penelitian ini diharapkan dapat memberikan wawasan berharga dalam pengembangan aplikasi manajemen tugas akhir berbasis mobile untuk mendukung mahasiswa dalam menyelesaikan tugas akhir mereka dengan lebih efisien.\n\nSkripsi ini bertujuan untuk menganalisis bagaimana penggunaan fitur notifikasi dalam aplikasi mobile berbasis Flutter dapat mempengaruhi efisiensi dalam manajemen tugas akhir. Penelitian ini akan mengeksplorasi apakah pemberian notifikasi kepada pengguna aplikasi secara tepat waktu dan relevan dapat meningkatkan kesadaran, partisipasi, dan kepatuhan terhadap tenggat waktu dan tanggung jawab terkait tugas akhir. Hasil dari penelitian ini diharapkan dapat memberikan wawasan berharga dalam pengembangan aplikasi manajemen tugas akhir berbasis mobile untuk mendukung mahasiswa dalam menyelesaikan tugas akhir mereka dengan lebih efisien.',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    topikItem(
                      context,
                      'Sistem Monitoring Polusi Udara Indonesia berbasis Web GIS, Web Scraping API, dan Data Warehousing untuk Pencatatan Data Real-Time',
                      'Annisa Puspa Kirana, S. Kom, M.Kom',
                      'Penelitian',
                      'Sudah Diambil',
                      ['Mobile Dev'],
                      'Skripsi ini bertujuan untuk menganalisis bagaimana penggunaan fitur notifikasi dalam aplikasi mobile berbasis Flutter dapat mempengaruhi efisiensi dalam manajemen tugas akhir. Penelitian ini akan mengeksplorasi apakah pemberian notifikasi kepada pengguna aplikasi secara tepat waktu dan relevan dapat meningkatkan kesadaran, partisipasi, dan kepatuhan terhadap tenggat waktu dan tanggung jawab terkait tugas akhir. Hasil dari penelitian ini diharapkan dapat memberikan wawasan berharga dalam pengembangan aplikasi manajemen tugas akhir berbasis mobile untuk mendukung mahasiswa dalam menyelesaikan tugas akhir mereka dengan lebih efisien.',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    topikItem(
                      context,
                      'Dota2 match analytics',
                      'Putra Prima A., ST., M.Kom.',
                      'Pengembangan',
                      'Tersedia',
                      [
                        'Mobile Dev',
                      ],
                      'Skripsi ini bertujuan untuk menganalisis bagaimana penggunaan fitur notifikasi dalam aplikasi mobile berbasis Flutter dapat mempengaruhi efisiensi dalam manajemen tugas akhir. Penelitian ini akan mengeksplorasi apakah pemberian notifikasi kepada pengguna aplikasi secara tepat waktu dan relevan dapat meningkatkan kesadaran, partisipasi, dan kepatuhan terhadap tenggat waktu dan tanggung jawab terkait tugas akhir. Hasil dari penelitian ini diharapkan dapat memberikan wawasan berharga dalam pengembangan aplikasi manajemen tugas akhir berbasis mobile untuk mendukung mahasiswa dalam menyelesaikan tugas akhir mereka dengan lebih efisien.',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    topikItem(
                      context,
                      'Analisis Penggunaan Fitur Notifikasi dalam Aplikasi Mobile Berbasis Flutter untuk untukuntuk',
                      'Habibie Ed Dien, S.Kom., M.T.',
                      'Pengembangan',
                      'Dipilih',
                      ['Mobile Dev'],
                      'Skripsi ini bertujuan untuk menganalisis bagaimana penggunaan fitur notifikasi dalam aplikasi mobile berbasis Flutter dapat mempengaruhi efisiensi dalam manajemen tugas akhir. Penelitian ini akan mengeksplorasi apakah pemberian notifikasi kepada pengguna aplikasi secara tepat waktu dan relevan dapat meningkatkan kesadaran, partisipasi, dan kepatuhan terhadap tenggat waktu dan tanggung jawab terkait tugas akhir. Hasil dari penelitian ini diharapkan dapat memberikan wawasan berharga dalam pengembangan aplikasi manajemen tugas akhir berbasis mobile untuk mendukung mahasiswa dalam menyelesaikan tugas akhir mereka dengan lebih efisien.',
                    ),
                  ],
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }

  void showFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const FilterTopikScreen();
      },
    );
  }
}
