import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/proposal_saya/widgets/item_widget/proposal_saya_item.dart';

class ProposalSayaScreen extends StatelessWidget {
  const ProposalSayaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Proposal Saya',
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
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
            ),
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.success500,
            ),
            child: const Center(
              child: Text(
                'Dosen YBS bersedia untuk menjadi pembimbing utama proposal yang diajukan.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.text,
                  color: AppColors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.primary50,
            ),
            child: const Center(
              child: Text(
                'Analisis Penggunaan Fitur Notifikasi dalam Aplikasi Mobile Berbasis Flutter untuk Meningkatkan Efisiensi Manajemen Tugas Akhir',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.text,
                  color: AppColors.primary500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          proposalSayaItem(
            'Pengusul',
            '2041720022 - Muh. Fauzi Ramadhan Nugraha',
            [],
            true,
          ),
          const SizedBox(
            height: 16,
          ),
          proposalSayaItem(
            'Dosen Pembimbing',
            'Habibie Ed Dien, S.Kom., M.T.',
            [],
            true,
          ),
          const SizedBox(
            height: 16,
          ),
          proposalSayaItem(
            'Tipe Proposal',
            'Topik Usulan Dosen',
            [],
            true,
          ),
          const SizedBox(
            height: 16,
          ),
          proposalSayaItem(
            'Jenis Proposal',
            'Development / Pengembangan',
            [],
            true,
          ),
          const SizedBox(
            height: 16,
          ),
          proposalSayaItem(
            'Abstrak/Deskripsi',
            'Skripsi ini bertujuan untuk menganalisis bagaimana penggunaan fitur notifikasi dalam aplikasi mobile berbasis Flutter dapat mempengaruhi efisiensi dalam manajemen tugas akhir. Penelitian ini akan mengeksplorasi apakah pemberian notifikasi kepada pengguna aplikasi secara tepat waktu dan relevan dapat meningkatkan kesadaran, partisipasi, dan kepatuhan terhadap tenggat waktu dan tanggung jawab terkait tugas akhir. Hasil dari penelitian ini diharapkan dapat memberikan wawasan berharga dalam pengembangan aplikasi manajemen tugas akhir berbasis mobile untuk mendukung mahasiswa dalam menyelesaikan tugas akhir mereka dengan lebih efisien.',
            [],
            true,
          ),
          const SizedBox(
            height: 16,
          ),
          proposalSayaItem(
            'Bidang Topik',
            '',
            [
              'Mobile Application',
              'Mobile Application',
              'Mobile Application',
            ],
            true,
          ),
          const SizedBox(
            height: 16,
          ),
          proposalSayaItem(
            'Repo Dokumen',
            'https://drive.google.com/drive/folders/1D8FQyeK1R0SkV6hmU3_3RFtk9dt3QfAq?usp=sharing',
            [],
            true,
          ),
          const SizedBox(
            height: 16,
          ),
          proposalSayaItem(
            'Repo Aplikasi',
            'https://github.com/oocengg/fauzi_tugas-akhir.git',
            [],
            true,
          ),
          const SizedBox(
            height: 16,
          ),
          proposalSayaItem(
            'Status',
            'https://github.com/oocengg/fauzi_tugas-akhir.git',
            [],
            false,
          ),
        ],
      ),
    );
  }
}
