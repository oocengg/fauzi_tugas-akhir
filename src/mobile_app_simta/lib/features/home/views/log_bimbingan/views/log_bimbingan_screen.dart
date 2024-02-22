import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/home/views/log_bimbingan/provider/log_bimbingan_provider.dart';
import 'package:mobile_app_simta/features/home/views/log_bimbingan/views/add_log_bimbingan_screen.dart';
import 'package:mobile_app_simta/features/home/views/log_bimbingan/widgets/item_widget/log_bimbingan_item.dart';
import 'package:mobile_app_simta/features/home/views/log_bimbingan/widgets/loading_section/log_bimbingan_loading.dart';
import 'package:provider/provider.dart';

class LogBimbinganScreen extends StatefulWidget {
  const LogBimbinganScreen({super.key});

  @override
  State<LogBimbinganScreen> createState() => _LogBimbinganScreenState();
}

class _LogBimbinganScreenState extends State<LogBimbinganScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LogBimbinganProvider>().getLogBimbinganData();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Log Bimbingan',
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
      floatingActionButton: Consumer<LogBimbinganProvider>(
        builder: (context, logBimbinganProvider, _) {
          if (logBimbinganProvider.logBimbinganState == AppState.loaded) {
            return FloatingActionButton(
              onPressed: () {
                _showBottomSheet(context);
              },
              backgroundColor: AppColors.primary500,
              child: const Icon(
                FontAwesomeIcons.plus,
                color: AppColors.white,
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      body: Consumer<LogBimbinganProvider>(
        builder: (context, logBimbinganProvider, _) {
          if (logBimbinganProvider.logBimbinganState == AppState.initial) {
            return const SizedBox.shrink();
          } else if (logBimbinganProvider.logBimbinganState ==
              AppState.loading) {
            return const LogBimbinganLoading();
          } else if (logBimbinganProvider.logBimbinganState ==
              AppState.loaded) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: ListView(
                children: [
                  logBimbinganItem(
                    context,
                    'Diskusi Scope Aplikasi SIM-TA',
                    'Habibie Ed Dien, S.Kom, M.T.',
                    '12-12-2023',
                    'Disetujui',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  logBimbinganItem(
                    context,
                    'Diskusi Scope Aplikasi SIM-TA',
                    'Habibie Ed Dien, S.Kom, M.T.',
                    '12-12-2023',
                    'Menunggu Persetujuan',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  logBimbinganItem(
                    context,
                    'Diskusi Scope Aplikasi SIM-TA',
                    'Habibie Ed Dien, S.Kom, M.T.',
                    '12-12-2023',
                    'Ditolak',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  logBimbinganItem(
                    context,
                    'Diskusi Scope Aplikasi SIM-TA',
                    'Habibie Ed Dien, S.Kom, M.T.',
                    '12-12-2023',
                    'Disetujui',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  logBimbinganItem(
                    context,
                    'Diskusi Scope Aplikasi SIM-TA',
                    'Habibie Ed Dien, S.Kom, M.T.',
                    '12-12-2023',
                    'Disetujui',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const AddLogBimbinganScreen();
      },
    );
  }
}
