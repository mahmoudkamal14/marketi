import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BannerShimmerLoading extends StatelessWidget {
  const BannerShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 200,
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        color: Colors.white,
      ),
    );
  }
}
