import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
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
              ),
              const SizedBox(
                height: 16,
              ),
              praProposalItem(
                context,
                'assets/images/pra_2.png',
                'Usulan Topik Dosen',
              ),
              const SizedBox(
                height: 16,
              ),
              praProposalItem(
                context,
                'assets/images/pra_3.png',
                'Pendaftaran Seminar Proposal',
              ),
              const SizedBox(
                height: 16,
              ),
              praProposalItem(
                context,
                'assets/images/pra_4.png',
                'Jadwal Seminar Proposal',
              ),
              const SizedBox(
                height: 16,
              ),
              praProposalItem(
                context,
                'assets/images/pra_5.png',
                'Seminar Proposal',
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
