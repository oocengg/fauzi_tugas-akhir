import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/pasca_proposal/widgets/item_widget/pasca_proposal_item.dart';

class PascaProposalScreen extends StatelessWidget {
  const PascaProposalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const Text(
                'Pasca Proposal',
                style: TextStyle(
                  fontSize: AppFontSize.heading3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              pascaProposalItem(
                context,
                'assets/images/pra_2.png',
                'Pendaftaran Sidang TA',
              ),
              const SizedBox(
                height: 16,
              ),
              pascaProposalItem(
                context,
                'assets/images/pra_5.png',
                'Jadwal Sidang TA',
              ),
              const SizedBox(
                height: 16,
              ),
              pascaProposalItem(
                context,
                'assets/images/pra_3.png',
                'Sidang TA',
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
