import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/daftar_kuota_dosen/provider/daftar_kuota_dosen_provider.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class UsulanTopikDosenLoading extends StatefulWidget {
  const UsulanTopikDosenLoading({super.key});

  @override
  State<UsulanTopikDosenLoading> createState() =>
      _UsulanTopikDosenLoadingState();
}

class _UsulanTopikDosenLoadingState extends State<UsulanTopikDosenLoading> {
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
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          loadingUsulanTopikItem(context),
          const SizedBox(
            height: 16,
          ),
          loadingUsulanTopikItem(context),
          const SizedBox(
            height: 16,
          ),
          loadingUsulanTopikItem(context),
          const SizedBox(
            height: 16,
          ),
          loadingUsulanTopikItem(context),
          const SizedBox(
            height: 16,
          ),
          loadingUsulanTopikItem(context),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget loadingUsulanTopikItem(BuildContext context) {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  children: [
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
                      height: 8,
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
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  width: 20,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.neutral200,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Shimmer.fromColors(
            baseColor: AppColors.baseShimmerColor,
            highlightColor: AppColors.highlightShimmerColor,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.neutral200,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: AppColors.neutral50,
                    borderRadius: BorderRadius.circular(65),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    color: AppColors.neutral50,
                    borderRadius: BorderRadius.circular(65),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
