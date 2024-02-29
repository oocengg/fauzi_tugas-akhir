import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/daftar_kuota_dosen/provider/daftar_kuota_dosen_provider.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class PendaftaranSeminarProposalLoading extends StatefulWidget {
  const PendaftaranSeminarProposalLoading({super.key});

  @override
  State<PendaftaranSeminarProposalLoading> createState() =>
      _PendaftaranSeminarProposalLoadingState();
}

class _PendaftaranSeminarProposalLoadingState
    extends State<PendaftaranSeminarProposalLoading> {
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date Item
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Shimmer.fromColors(
                          baseColor: AppColors.baseShimmerColor,
                          highlightColor: AppColors.highlightShimmerColor,
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: AppColors.neutral50,
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Shimmer.fromColors(
                                baseColor: AppColors.baseShimmerColor,
                                highlightColor: AppColors.highlightShimmerColor,
                                child: Container(
                                  height: 20,
                                  width: 70,
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
                                  height: 20,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: AppColors.neutral50,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Shimmer.fromColors(
                    baseColor: AppColors.baseShimmerColor,
                    highlightColor: AppColors.highlightShimmerColor,
                    child: Container(
                      height: 5,
                      width: 20,
                      decoration: BoxDecoration(
                        color: AppColors.neutral50,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Shimmer.fromColors(
                          baseColor: AppColors.baseShimmerColor,
                          highlightColor: AppColors.highlightShimmerColor,
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: AppColors.neutral50,
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Shimmer.fromColors(
                                baseColor: AppColors.baseShimmerColor,
                                highlightColor: AppColors.highlightShimmerColor,
                                child: Container(
                                  height: 20,
                                  width: 70,
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
                                  height: 20,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: AppColors.neutral50,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),

            // Registrasi Info Item
            Shimmer.fromColors(
              baseColor: AppColors.baseShimmerColor,
              highlightColor: AppColors.highlightShimmerColor,
              child: Container(
                height: 60,
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

            // Syarat Item
            Shimmer.fromColors(
              baseColor: AppColors.baseShimmerColor,
              highlightColor: AppColors.highlightShimmerColor,
              child: Container(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.4,
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
                height: 20,
                width: MediaQuery.of(context).size.width,
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
                height: 20,
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

            // Deskripsi Item
            Shimmer.fromColors(
              baseColor: AppColors.baseShimmerColor,
              highlightColor: AppColors.highlightShimmerColor,
              child: Container(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.5,
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
                height: 20,
                width: MediaQuery.of(context).size.width,
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
                height: 20,
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
            // Keterangan Item
            Shimmer.fromColors(
              baseColor: AppColors.baseShimmerColor,
              highlightColor: AppColors.highlightShimmerColor,
              child: Container(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: AppColors.neutral50,
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Shimmer.fromColors(
                    baseColor: AppColors.baseShimmerColor,
                    highlightColor: AppColors.highlightShimmerColor,
                    child: Container(
                      height: 125,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.neutral50,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Shimmer.fromColors(
                    baseColor: AppColors.baseShimmerColor,
                    highlightColor: AppColors.highlightShimmerColor,
                    child: Container(
                      height: 125,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: AppColors.neutral50,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
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
        Shimmer.fromColors(
          baseColor: AppColors.baseShimmerColor,
          highlightColor: AppColors.highlightShimmerColor,
          child: Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
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
            height: 30,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: AppColors.neutral50,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        loadingItem(context, 1, false),
        const SizedBox(
          height: 16,
        ),
        loadingItem(context, 1, false),
        const SizedBox(
          height: 16,
        ),
        loadingItem(context, 1, false),
      ],
    );
  }

  Widget loadingItem(BuildContext context, int type, bool long) {
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
