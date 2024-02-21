import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/home/provider/news_provider.dart';
import 'package:mobile_app_simta/features/home/widgets/item_widget/news_item.dart';
import 'package:mobile_app_simta/features/home/widgets/loading_section/news_loading.dart';
import 'package:provider/provider.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (context, headingProvider, _) {
        if (headingProvider.newsState == AppState.initial) {
          return const SizedBox.shrink();
        } else if (headingProvider.newsState == AppState.loading) {
          return const NewsLoading();
        } else if (headingProvider.newsState == AppState.loaded) {
          return CarouselSlider(
            items: [
              newsItem(
                context,
                'assets/images/news_bg_1.png',
                'Sosialisasi Pasca Seminar Proposal Tahun 2024',
                'Panitia TA',
              ),
              newsItem(
                context,
                'assets/images/news_bg_2.png',
                'Sosialisasi Hasil Seminar Proposal Tahun 2024',
                'Panitia TA',
              ),
              newsItem(
                context,
                'assets/images/news_bg_3.png',
                'Sosialisasi Pasca Pasca Pasca Pasca Pasca Pasca Pasca Pasca Seminar Proposal Tahun 2024',
                'Panitia TA',
              ),
            ],
            options: CarouselOptions(
              height: 180.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              enlargeCenterPage: false,
              scrollDirection: Axis.horizontal,
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
