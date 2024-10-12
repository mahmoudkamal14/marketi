import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/features/home/data/models/product_response_model.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.model,
  });

  final ProductDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.name!,
          maxLines: 1,
          style: AppStyles.style20Medium,
          textAlign: TextAlign.start,
        ),
        verticalSpace(14),
        Text(
          'الوصف',
          style: AppStyles.style20Medium,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 200.h,
          child: ListView(
            children: [
              Text(
                model.description!,
                style: AppStyles.style14Medium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
