import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/profile/widgets/item_widget/item_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      color: AppColors.neutral50,
                      borderRadius: BorderRadius.circular(65),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/profile.jpeg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Muh. Fauzi Ramadhan Nugraha',
                          style: TextStyle(
                            fontSize: AppFontSize.heading3,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                        Text(
                          '2041720022',
                          style: TextStyle(
                            fontSize: AppFontSize.heading5,
                            color: AppColors.black,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'JTI - D4 Teknik Informatika',
                          style: TextStyle(
                            fontSize: AppFontSize.heading5,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.primary50,
                ),
                child: const Center(
                  child: Text(
                    'Analisis Penggunaan Fitur Notifikasi dalam Aplikasi Mobile Berbasis Flutter untuk Meningkatkan Efisiensi Manajemen Tugas Akhir',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppFontSize.text,
                      color: AppColors.primary500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              itemProfile(
                'Proposal Saya',
                FontAwesomeIcons.file,
              ),
              const SizedBox(
                height: 24,
              ),
              itemProfile(
                'Profil Mahasiswa',
                FontAwesomeIcons.circleUser,
              ),
              const SizedBox(
                height: 24,
              ),
              itemProfile(
                'Akun',
                FontAwesomeIcons.user,
              ),
              const SizedBox(
                height: 24,
              ),
              itemProfile(
                'Keluar',
                FontAwesomeIcons.arrowRightFromBracket,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
