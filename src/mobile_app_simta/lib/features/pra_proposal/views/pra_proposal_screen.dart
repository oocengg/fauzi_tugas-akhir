import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/daftar_kuota_dosen/views/daftar_kuota_dosen_screen.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/pendaftaran_seminar_proposal/views/pendaftaran_seminar_proposal_screen.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/proposal_saya/views/proposal_saya_screen.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/views/ujian_seminar_proposal_screen.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/usulan_topik_dosen/views/usulan_topik_dosen_screen.dart';
import 'package:mobile_app_simta/features/pra_proposal/widgets/item_widget/pra_proposal_item.dart';

class PraProposalScreen extends StatelessWidget {
  const PraProposalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: 16,
          ),
          child: ListView(
            children: [
              const Text(
                'Pra Proposal',
                style: TextStyle(
                  fontSize: AppFontSize.heading3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              praProposalItem(
                context,
                'assets/images/pra_1.png',
                'Daftar Kuota Dosen',
                '1',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DaftarKuotaDosenScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              praProposalItem(
                context,
                'assets/images/pra_2.png',
                'Usulan Topik Dosen',
                '2',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UsulanTopikDosenScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              praProposalItem(
                context,
                'assets/images/pra_4.png',
                'Proposal Saya',
                '3',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProposalSayaScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              praProposalItem(
                context,
                'assets/images/pra_3.png',
                'Pendaftaran Seminar Proposal',
                '4',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PendaftaranSeminarProposalScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              praProposalItem(
                context,
                'assets/images/pra_5.png',
                'Ujian Seminar Proposal',
                '5',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UjianSeminarProposalScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
