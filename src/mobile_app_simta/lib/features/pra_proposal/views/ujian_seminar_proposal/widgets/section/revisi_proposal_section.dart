import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/item_widget/file_item.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/item_widget/persetujuan_dosen_item.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/item_widget/revisi_dosen_item.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/item_widget/warning_lengkapi_data_item.dart';

class RevisiProposalSection extends StatelessWidget {
  const RevisiProposalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 16,
            left: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Revisi Proposal :',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.heading5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              warningLengkapiDataItem(
                'Lengkapi data revisi proposal melalui website SIM-TA',
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Dosen Pembimbing 1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.text,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              const RevisiDosenItem(
                  title: 'Yoppy Yunhasnawa, S.ST., M.Sc.',
                  data:
                      '1. Harap dipastikan dan dituliskan di proposal bahwa ada fitur yang mengingatkan dosen moderator + pembahas + mahasiswa ketika ada perubahan jadwal.\n2. Fix-kan metode deteksi updatenya seperti apa, dan tuliskan di proposal, tambahkan penjelasan baik berupa tulisan maupun diagram.\n3.Perbaiki penulisan proposal sesuai dengan metodologi yang digunakan.'),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Dosen Pembimbing 2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.text,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              const RevisiDosenItem(
                  title: 'Moch Zawaruddin Abdullah, S.ST., M.Kom.',
                  data:
                      '- Deskripsi Metodologi Pengembangan Perangkat Lunak ditaruh di Bab 2.\n- Untuk progres yang sudah dikerjakan dan yang akan dikerjakan sesuai dengan Metodologi Pengembangan PL (bab-bab nya) baru ditaruh di Bab 3.\n- Tambahkan profile mitra.\n- Analisis kebutuhan di Bab 2 setelah profile mitra saja'),
              const SizedBox(
                height: 16,
              ),
              fileItem(
                'File Revisi Laporan',
                'rev-laporan_aad9c09c17b2466fad4dcc4551500188.pdf',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Divider(
          color: AppColors.neutral100,
        ),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Persetujuan Penguji :',
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
        persetujuanDosenItem(
          context,
          'Penguji 1',
          'Yoppy Yunhasnawa, S.ST., M.Sc.',
          'Revisi sudah dikerjakan.',
          'Disetujui',
        ),
        const SizedBox(
          height: 16,
        ),
        persetujuanDosenItem(
          context,
          'Penguji 2',
          'Moch Zawaruddin Abdullah, S.ST., M.Kom.',
          'OK.',
          'Disetujui',
        ),
      ],
    );
  }
}
