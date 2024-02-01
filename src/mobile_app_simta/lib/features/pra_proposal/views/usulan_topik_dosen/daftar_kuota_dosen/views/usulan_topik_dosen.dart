import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/usulan_topik_dosen/daftar_kuota_dosen/widgets/item_widget/topik_item.dart';

class UsulanTopikDosenScreen extends StatelessWidget {
  const UsulanTopikDosenScreen({super.key});

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
        backgroundColor: AppColors.primary500,
        shadowColor: AppColors.black.withOpacity(0.2),
      ),
      body: Padding(
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
              'Skripsi ini bertujuan untuk menganalisis bagaimana penggunaan fitur notifikasi dalam aplikasi mobile berbasis Flutter dapat mempengaruhi efisiensi dalam manajemen tugas akhir. Penelitian ini akan mengeksplorasi apakah pemberian notifikasi kepada pengguna aplikasi secara tepat waktu dan relevan dapat meningkatkan kesadaran, partisipasi, dan kepatuhan terhadap tenggat waktu dan tanggung jawab terkait tugas akhir. Hasil dari penelitian ini diharapkan dapat memberikan wawasan berharga dalam pengembangan aplikasi manajemen tugas akhir berbasis mobile untuk mendukung mahasiswa dalam menyelesaikan tugas akhir mereka dengan lebih efisien.',
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
      ),
    );
  }
}
