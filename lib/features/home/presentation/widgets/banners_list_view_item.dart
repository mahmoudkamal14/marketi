import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';

class BannersListViewItem extends StatelessWidget {
  const BannersListViewItem({super.key, required this.model});

  final DataBanner model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Image.network(
        model.image!,
        fit: BoxFit.cover,
      ),
    );
  }
}
