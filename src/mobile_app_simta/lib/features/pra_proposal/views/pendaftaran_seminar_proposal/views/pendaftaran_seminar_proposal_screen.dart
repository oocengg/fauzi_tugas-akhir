import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/pendaftaran_seminar_proposal/provider/pendaftaran_seminar_proposal_provider.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/pendaftaran_seminar_proposal/widgets/loading_screen/pendaftaran_seminar_proposal_loading.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/pendaftaran_seminar_proposal/widgets/section/detail_proposal_section.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/pendaftaran_seminar_proposal/widgets/section/info_pendaftaran_section.dart';
import 'package:provider/provider.dart';

class PendaftaranSeminarProposalScreen extends StatefulWidget {
  const PendaftaranSeminarProposalScreen({super.key});

  @override
  State<PendaftaranSeminarProposalScreen> createState() =>
      _PendaftaranSeminarProposalScreenState();
}

class _PendaftaranSeminarProposalScreenState
    extends State<PendaftaranSeminarProposalScreen> {
  onInitCalled() {
    context
        .read<PendaftaranSeminarProposalProvider>()
        .getPendaftaranSeminarData();
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
      body: RefreshIndicator(
        onRefresh: () async {
          onInitCalled();
        },
        child: Consumer<PendaftaranSeminarProposalProvider>(
          builder: (context, pendaftaranSeminarProposalProvider, _) {
            if (pendaftaranSeminarProposalProvider
                    .pendaftaranSeminarProposalState ==
                AppState.initial) {
              return const SizedBox.shrink();
            } else if (pendaftaranSeminarProposalProvider
                    .pendaftaranSeminarProposalState ==
                AppState.loading) {
              return const PendaftaranSeminarProposalLoading();
            } else if (pendaftaranSeminarProposalProvider
                    .pendaftaranSeminarProposalState ==
                AppState.loaded) {
              return ListView(
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
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
