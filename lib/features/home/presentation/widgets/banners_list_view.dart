import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/home/presentation/logic/home_cubit.dart';
import 'package:marketi/features/home/presentation/widgets/banners_list_view_item.dart';

class BannersListView extends StatelessWidget {
  const BannersListView({super.key});

  @override
  Widget build(BuildContext context) {
    var bannersList = HomeCubit.get(context).bannerList;

    return SizedBox(
      height: 230.h,
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: bannersList!.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            BannersListViewItem(model: bannersList[itemIndex]),
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
        ),
      ),
    );
  }
}
