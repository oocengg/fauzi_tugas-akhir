import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/daftar_kuota_dosen/widgets/item_widget/dosen_item.dart';

class DaftarKuotaDosenScreen extends StatelessWidget {
  const DaftarKuotaDosenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Daftar Kuota Dosen',
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            mainAxisExtent: 314,
          ),
          itemCount: 8,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return dosenItem(
              context,
              'assets/images/profile.jpeg',
              'Habibie Ed Dien, S.Kom., M.T.',
              '199204122019031000',
              7,
              7,
              () {},
            );
          },
        ),
      ),
    );
  }
}
