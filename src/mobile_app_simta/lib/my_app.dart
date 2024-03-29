import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/keys/navigator_key.dart';
import 'package:mobile_app_simta/features/dashboard/provider/dashboard_provider.dart';
import 'package:mobile_app_simta/features/home/provider/bimbingan_provider.dart';
import 'package:mobile_app_simta/features/home/provider/heading_provider.dart';
import 'package:mobile_app_simta/features/home/provider/news_provider.dart';
import 'package:mobile_app_simta/features/home/provider/notification_provider.dart';
import 'package:mobile_app_simta/features/home/views/log_bimbingan/provider/log_bimbingan_provider.dart';
import 'package:mobile_app_simta/features/notification/provider/main_notification_provider.dart';
import 'package:mobile_app_simta/features/pasca_proposal/views/skripsi_saya/provider/skripsi_saya_provider.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/daftar_kuota_dosen/provider/daftar_kuota_dosen_provider.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/pendaftaran_seminar_proposal/provider/pendaftaran_seminar_proposal_provider.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/proposal_saya/provider/proposal_saya_provider.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/provider/ujian_seminar_proposal_provider.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/usulan_topik_dosen/provider/usulan_topik_dosen_provider.dart';
import 'package:mobile_app_simta/features/splash/views/splash_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Home Screen Provider
        ChangeNotifierProvider(
          create: (context) => DashboardProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HeadingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NewsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NotificationProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BimbinganProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LogBimbinganProvider(),
        ),

        // Pra Proposal Screen
        ChangeNotifierProvider(
          create: (context) => UsulanTopikDosenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MainNotificationProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DaftarKuotaDosenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProposalSayaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PendaftaranSeminarProposalProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UjianSeminarProposalProvider(),
        ),

        // Pasca Proposal Provider
        ChangeNotifierProvider(
          create: (context) => SkripsiSayaProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sim TA App',
        home: const SplashScreen(),
        theme: ThemeData().copyWith(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary500,
          ),
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme,
          ).apply(
            bodyColor: Colors.black,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          bottomAppBarTheme: const BottomAppBarTheme(
            color: Colors.white,
            shadowColor: Colors.black,
            elevation: 20,
            surfaceTintColor: Colors.white,
          ),
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.white,
          ),
          dialogTheme: const DialogTheme(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
          ),
          datePickerTheme: const DatePickerThemeData(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
          ),
        ),
        navigatorKey: navigatorKey,
      ),
    );
  }
}
