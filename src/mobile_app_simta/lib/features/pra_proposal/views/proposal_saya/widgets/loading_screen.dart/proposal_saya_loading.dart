import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/daftar_kuota_dosen/provider/daftar_kuota_dosen_provider.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class ProposalSayaLoading extends StatefulWidget {
  const ProposalSayaLoading({super.key});

  @override
  State<ProposalSayaLoading> createState() => _ProposalSayaLoadingState();
}

class _ProposalSayaLoadingState extends State<ProposalSayaLoading> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DaftarKuotaDosenProvider>().getDaftarKuotaDosenData();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Shimmer.fromColors(
          baseColor: AppColors.baseShimmerColor,
          highlightColor: AppColors.highlightShimmerColor,
          child: Container(
            height: 75,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.neutral50,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Shimmer.fromColors(
          baseColor: AppColors.baseShimmerColor,
          highlightColor: AppColors.highlightShimmerColor,
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.neutral50,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        loadingKuotaDosenItem(context, 2, false),
        const SizedBox(
          height: 16,
        ),
        loadingKuotaDosenItem(context, 3, false),
        const SizedBox(
          height: 16,
        ),
        loadingKuotaDosenItem(context, 1, false),
        const SizedBox(
          height: 16,
        ),
        loadingKuotaDosenItem(context, 1, false),
        const SizedBox(
          height: 16,
        ),
        loadingKuotaDosenItem(context, 2, true),
      ],
    );
  }

  Widget loadingKuotaDosenItem(BuildContext context, int type, bool long) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          baseColor: AppColors.baseShimmerColor,
          highlightColor: AppColors.highlightShimmerColor,
          child: Container(
            height: 30,
            width: type == 1
                ? 100
                : type == 2
                    ? 150
                    : type == 3
                        ? 200
                        : 250,
            decoration: BoxDecoration(
              color: AppColors.neutral50,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Shimmer.fromColors(
          baseColor: AppColors.baseShimmerColor,
          highlightColor: AppColors.highlightShimmerColor,
          child: Container(
            height: long ? 200 : 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.neutral50,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
      ],
    );
  }
}
