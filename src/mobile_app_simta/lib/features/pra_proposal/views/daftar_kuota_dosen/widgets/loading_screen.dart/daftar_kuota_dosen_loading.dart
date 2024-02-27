import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/daftar_kuota_dosen/provider/daftar_kuota_dosen_provider.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class DaftarKuotaDosenLoading extends StatefulWidget {
  const DaftarKuotaDosenLoading({super.key});

  @override
  State<DaftarKuotaDosenLoading> createState() =>
      _DaftarKuotaDosenLoadingState();
}

class _DaftarKuotaDosenLoadingState extends State<DaftarKuotaDosenLoading> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DaftarKuotaDosenProvider>().getDaftarKuotaDosenData();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          return loadingKuotaDosenItem(context);
        },
      ),
    );
  }

  Widget loadingKuotaDosenItem(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            spreadRadius: 0,
            blurRadius: 20,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Shimmer.fromColors(
            baseColor: AppColors.baseShimmerColor,
            highlightColor: AppColors.highlightShimmerColor,
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                color: AppColors.neutral50,
                borderRadius: BorderRadius.circular(65),
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
              width: MediaQuery.of(context).size.width,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.neutral200,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Shimmer.fromColors(
            baseColor: AppColors.baseShimmerColor,
            highlightColor: AppColors.highlightShimmerColor,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.neutral200,
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
              width: MediaQuery.of(context).size.width,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.neutral200,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: AppColors.neutral50,
                    borderRadius: BorderRadius.circular(65),
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppColors.neutral50,
                    borderRadius: BorderRadius.circular(65),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
