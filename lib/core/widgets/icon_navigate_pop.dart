import 'package:flutter/material.dart';
import 'package:marketi/core/helper/extentions.dart';

class IconNavigatePop extends StatelessWidget {
  const IconNavigatePop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Container(
        width: 48,
        height: 48,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xB2B2CCFF)),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
    );
  }
}
