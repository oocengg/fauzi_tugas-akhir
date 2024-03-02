import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/pasca_proposal/views/skripsi_saya/provider/skripsi_saya_provider.dart';
import 'package:mobile_app_simta/features/pasca_proposal/views/skripsi_saya/widgets/item_widget/dosen_pembimbing_item.dart';
import 'package:mobile_app_simta/features/pasca_proposal/views/skripsi_saya/widgets/item_widget/skripsi_saya_item.dart';
import 'package:mobile_app_simta/features/pasca_proposal/views/skripsi_saya/widgets/loading_screen/skripsi_saya_loading.dart';
import 'package:provider/provider.dart';

class SkripsiSayaScreen extends StatefulWidget {
  const SkripsiSayaScreen({super.key});

  @override
  State<SkripsiSayaScreen> createState() => _SkripsiSayaScreenState();
}

class _SkripsiSayaScreenState extends State<SkripsiSayaScreen> {
  onInitCalled() {
    context.read<SkripsiSayaProvider>().getSkripsiSayaData();
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
          'Skripsi Saya',
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
        child: Consumer<SkripsiSayaProvider>(
          builder: (context, skripsiSayaProvider, _) {
            if (skripsiSayaProvider.skripsiSayaState == AppState.initial) {
              return const SizedBox.shrink();
            } else if (skripsiSayaProvider.skripsiSayaState ==
                AppState.loading) {
              return const SkripsiSayaLoading();
            } else if (skripsiSayaProvider.skripsiSayaState ==
                AppState.loaded) {
              return ListView(
                children: [
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 16,
                      right: 16,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      mainAxisExtent: 365,
                    ),
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return index == 0
                          ? dosenPembimbingItem(
                              context,
                              'assets/images/profile.jpeg',
                              'Utama',
                              'Habibie Ed Dien, S.Kom., M.T.',
                              '199204122019031000',
                              7,
                              7,
                            )
                          : index == 1
                              ? dosenPembimbingItem(
                                  context,
                                  'assets/images/profile.jpeg',
                                  'Pendamping',
                                  'Moch Zawaruddin Abdullah, S.ST., M.Kom.',
                                  '198902102019031019',
                                  7,
                                  7,
                                )
                              : const SizedBox.shrink();
                    },
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
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Text(
                      'Data Skripsi/TA Saya :',
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
                  skripsiSayaItem(
                    'Pengusul',
                    '2041720022 - Muh. Fauzi Ramadhan Nugraha',
                    [],
                    true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  skripsiSayaItem(
                    'Tipe Proposal',
                    'Topik Usulan Dosen',
                    [],
                    true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  skripsiSayaItem(
                    'Jenis Proposal',
                    'Development / Pengembangan',
                    [],
                    true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  skripsiSayaItem(
                    'Abstrak/Deskripsi',
                    'Skripsi ini bertujuan untuk menganalisis bagaimana penggunaan fitur notifikasi dalam aplikasi mobile berbasis Flutter dapat mempengaruhi efisiensi dalam manajemen tugas akhir. Penelitian ini akan mengeksplorasi apakah pemberian notifikasi kepada pengguna aplikasi secara tepat waktu dan relevan dapat meningkatkan kesadaran, partisipasi, dan kepatuhan terhadap tenggat waktu dan tanggung jawab terkait tugas akhir. Hasil dari penelitian ini diharapkan dapat memberikan wawasan berharga dalam pengembangan aplikasi manajemen tugas akhir berbasis mobile untuk mendukung mahasiswa dalam menyelesaikan tugas akhir mereka dengan lebih efisien.',
                    [],
                    true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  skripsiSayaItem(
                    'Repo Dokumen',
                    'https://drive.google.com/drive/folders/1D8FQyeK1R0SkV6hmU3_3RFtk9dt3QfAq?usp=sharing',
                    [],
                    true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  skripsiSayaItem(
                    'Repo Aplikasi',
                    'https://github.com/oocengg/fauzi_tugas-akhir.git',
                    [],
                    true,
                  ),
                  const SizedBox(
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
