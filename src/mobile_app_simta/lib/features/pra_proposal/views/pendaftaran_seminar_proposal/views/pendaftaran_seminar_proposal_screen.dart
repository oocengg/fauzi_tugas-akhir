import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/pendaftaran_seminar_proposal/widgets/section/detail_proposal_section.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/pendaftaran_seminar_proposal/widgets/section/info_pendaftaran_section.dart';

class PendaftaranSeminarProposalScreen extends StatelessWidget {
  const PendaftaranSeminarProposalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Pendaftaran Seminar Proposal',
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
        children: const [
          InfoPendaftaranSection(),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: AppColors.neutral100,
          ),
          SizedBox(
            height: 16,
          ),
          DetailProposalSection(),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
