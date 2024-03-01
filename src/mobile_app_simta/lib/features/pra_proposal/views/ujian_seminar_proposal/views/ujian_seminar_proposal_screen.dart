import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/provider/ujian_seminar_proposal_provider.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/loading_screen/ujian_seminar_proposal_loading.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/section/hasil_seminar_proposal_section.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/section/jadwal_seminar_proposal_section.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/section/lampiran_final_proposal_section.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/section/revisi_proposal_section.dart';
import 'package:provider/provider.dart';

class UjianSeminarProposalScreen extends StatefulWidget {
  const UjianSeminarProposalScreen({super.key});

  @override
  State<UjianSeminarProposalScreen> createState() =>
      _UjianSeminarProposalScreenState();
}

class _UjianSeminarProposalScreenState
    extends State<UjianSeminarProposalScreen> {
  onInitCalled() {
    context.read<UjianSeminarProposalProvider>().setSelectedIndex(context, 0);
    context.read<UjianSeminarProposalProvider>().getUjianSeminarProposalData();
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
          'Ujian Seminar Proposal',
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
        child: Consumer<UjianSeminarProposalProvider>(
          builder: (context, ujianSeminarProposalProvider, _) {
            if (ujianSeminarProposalProvider.ujianSeminarProposalState ==
                AppState.initial) {
              return const SizedBox.shrink();
            } else if (ujianSeminarProposalProvider.ujianSeminarProposalState ==
                AppState.loading) {
              return const UjianSeminarProposalLoading();
            } else if (ujianSeminarProposalProvider.ujianSeminarProposalState ==
                AppState.loaded) {
              return Stack(
                children: [
                  ListView(
                    children: [
                      const SizedBox(
                        height: 53,
                      ),
                      const Divider(),
                      ujianSeminarProposalProvider.selectedIndex == 0
                          ? const JadwalSeminarProposalSection()
                          : ujianSeminarProposalProvider.selectedIndex == 1
                              ? const HasilSeminarProposalSection()
                              : ujianSeminarProposalProvider.selectedIndex == 2
                                  ? const RevisiProposalSection()
                                  : ujianSeminarProposalProvider
                                              .selectedIndex ==
                                          3
                                      ? const LampiranFinalProposalSection()
                                      : const JadwalSeminarProposalSection(),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      color: AppColors.white,
                      height: 60,
                      child: Center(
                        child: ListView.separated(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              ujianSeminarProposalProvider.setSelectedIndex(
                                  context, index);
                            },
                            child: Container(
                              decoration:
                                  ujianSeminarProposalProvider.selectedIndex ==
                                          index
                                      ? const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: AppColors.primary500,
                                              width: 1.0,
                                            ),
                                          ),
                                        )
                                      : null,
                              child: Text(
                                ujianSeminarProposalProvider.itemSection[index],
                                style: TextStyle(
                                  fontSize: AppFontSize.heading5,
                                  fontWeight: FontWeight.bold,
                                  color: ujianSeminarProposalProvider
                                              .selectedIndex ==
                                          index
                                      ? AppColors.primary500
                                      : AppColors.neutral400,
                                ),
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 20,
                          ),
                          itemCount:
                              ujianSeminarProposalProvider.itemSection.length,
                        ),
                      ),
                    ),
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
