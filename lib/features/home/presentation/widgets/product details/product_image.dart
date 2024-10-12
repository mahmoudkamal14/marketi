import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/features/home/data/models/product_response_model.dart';
import 'package:marketi/features/onboarding/widgets/smooth_page_indicator_widget.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    super.key,
    required this.model,
  });

  final ProductDetailsModel model;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    List<String> images = widget.model.images!;

    return Container(
      color: const Color(0xFFFFFFFF),
      child: PageView.builder(
        itemBuilder: (context, index) => buildImagePageView(
          widget.model.images![index],
        ),
        controller: controller,
        itemCount: images.length,
      ),
    );
  }

  Widget buildImagePageView(String image) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: CachedNetworkImage(
            imageUrl: image,
            height: 270,
          ),
        ),
        verticalSpace(20),
        SmoothPageIndicatorWidget(
          length: widget.model.images!.length,
          controller: controller,
        ),
      ],
    );
  }
}
