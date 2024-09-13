import 'package:flutter/material.dart';
import 'package:marketi/features/cart/data/models/item_product_cart_model.dart';

class AnimatedImageProduct extends StatefulWidget {
  const AnimatedImageProduct({super.key, required this.model});

  final ItemProductCartModel model;

  @override
  State<AnimatedImageProduct> createState() => _AnimatedImageProductState();
}

class _AnimatedImageProductState extends State<AnimatedImageProduct> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
      height: isExpanded ? 300 : 200,
      width: isExpanded ? 300 : 200,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: Image.asset(
          widget.model.photo,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
