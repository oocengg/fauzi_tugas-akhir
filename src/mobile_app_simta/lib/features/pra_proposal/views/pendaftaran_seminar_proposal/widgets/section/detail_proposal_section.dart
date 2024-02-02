import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/pendaftaran_seminar_proposal/widgets/item_widget/pendaftaran_proposal_item.dart';

class DetailProposalSection extends StatelessWidget {
  const DetailProposalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Text(
            'Detail Proposal yang telah didaftarkan pada tahap ini :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSize.heading5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        pendafataranProposalItem(
          'Dosen Pembimbing',
          'Habibie Ed Dien, S.Kom., M.T.',
          [],
        ),
        const SizedBox(
          height: 16,
        ),
        pendafataranProposalItem(
          'Jenis Proposal',
          'Development / Pengembangan',
          [],
        ),
        const SizedBox(
          height: 16,
        ),
        pendafataranProposalItem(
          'Judul Proposal',
          'Analisis Penggunaan Fitur Notifikasi dalam Aplikasi Mobile Berbasis Flutter untuk Meningkatkan Efisiensi Manajemen Tugas Akhir',
          [],
        ),
        const SizedBox(
          height: 16,
        ),
        pendafataranProposalItem(
          'Abstrak/Deskripsi',
          'Skripsi ini bertujuan untuk menganalisis bagaimana penggunaan fitur notifikasi dalam aplikasi mobile berbasis Flutter dapat mempengaruhi efisiensi dalam manajemen tugas akhir. Penelitian ini akan mengeksplorasi apakah pemberian notifikasi kepada pengguna aplikasi secara tepat waktu dan relevan dapat meningkatkan kesadaran, partisipasi, dan kepatuhan terhadap tenggat waktu dan tanggung jawab terkait tugas akhir. Hasil dari penelitian ini diharapkan dapat memberikan wawasan berharga dalam pengembangan aplikasi manajemen tugas akhir berbasis mobile untuk mendukung mahasiswa dalam menyelesaikan tugas akhir mereka dengan lebih efisien.',
          [],
        ),
        const SizedBox(
          height: 16,
        ),
        pendafataranProposalItem(
          'Bidang Topik',
          '',
          [
            'Mobile Application',
            'Mobile Application',
            'Mobile Application',
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        pendafataranProposalItem(
          'Repo Dokumen',
          'https://drive.google.com/drive/folders/1D8FQyeK1R0SkV6hmU3_3RFtk9dt3QfAq?usp=sharing',
          [],
        ),
        const SizedBox(
          height: 16,
        ),
        pendafataranProposalItem(
          'Repo Aplikasi',
          'https://github.com/oocengg/fauzi_tugas-akhir.git',
          [],
        ),
      ],
    );
  }
}
