import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/home/views/home_screen.dart';
import 'package:mobile_app_simta/features/notification/views/main_notification_screen.dart';
import 'package:mobile_app_simta/features/pasca_proposal/views/pasca_proposal_screen.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/pra_proposal_screen.dart';
import 'package:mobile_app_simta/features/profile/views/profile_screen.dart';

class DashboardProvider with ChangeNotifier {
  int selectedIndex = 0;

  // State untuk loading
  AppState state = AppState.initial;

  // Icon
  final List icon = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.book,
    FontAwesomeIcons.solidBell,
    FontAwesomeIcons.graduationCap,
    FontAwesomeIcons.solidUser,
  ];

  final List notActiveIcon = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.book,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.graduationCap,
    FontAwesomeIcons.solidUser,
  ];

  final List titleIcon = [
    'Beranda',
    'Pra',
    'Notifikasi',
    'Pasca',
    'Profil',
  ];

  // Pages untuk icon icon diatas
  final List<Widget> pages = [
    const HomeScreen(),
    const PraProposalScreen(),
    const MainNotificationScreen(),
    const PascaProposalScreen(),
    const ProfileScreen(),
  ];

  // Set Pages yang dipilih
  void setSelectedIndex(BuildContext context, int index) {
    selectedIndex = index;

    notifyListeners();
  }
}
