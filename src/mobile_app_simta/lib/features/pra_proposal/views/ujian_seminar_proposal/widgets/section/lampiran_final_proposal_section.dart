import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/item_widget/file_item.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/item_widget/persetujuan_dosen_item.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/item_widget/warning_lengkapi_data_item.dart';

class LampiranFinalProposalSection extends StatelessWidget {
  const LampiranFinalProposalSection({super.key});

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
                'Lampiran Final Laporan Proposal :',
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
                'Lengkapi data final proposal melalui website SIM-TA',
              ),
              const SizedBox(
                height: 16,
              ),
              fileItem(
                'Laporan Proposal Final (Laporan + Lembar Pengesahan)',
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
          'Dosen Pembimbing Utama',
          'Habibie Ed Dien, S.Kom., M.T.',
          'Ok.',
          'Disetujui',
        ),
      ],
    );
  }
}
