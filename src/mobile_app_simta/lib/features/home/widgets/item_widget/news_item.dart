import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget newsItem(
  BuildContext context,
  String backgroundImage,
  String title,
  String author,
) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.85,
    height: 180,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      image: DecorationImage(
        image: AssetImage(
          backgroundImage,
        ),
        fit: BoxFit.cover,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          spreadRadius: 0,
          blurRadius: 20,
          offset: const Offset(4, 4),
        ),
      ],
    ),
    child: Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black.withOpacity(0.3), Colors.transparent],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 24,
          left: 14,
          right: 14,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: AppFontSize.heading5,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
              Text(
                author,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: AppFontSize.text,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 14,
          left: 14,
          right: 14,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(),
            ),
          ),
        ),
      ],
    ),
  );
}
