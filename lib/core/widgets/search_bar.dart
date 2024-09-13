import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:marketi/core/widgets/app_text_form_field.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: AppTextFormField(
        hintText: 'What are you looking for ?',
        textInputType: TextInputType.text,
        validator: (p0) {},
        //onChanged: (value) {},
        prefixIcon: const Icon(Icons.search, size: 30, color: Colors.black),
        suffixIcon: const Icon(IconlyBold.filter, size: 30, color: Colors.blue),
      ),
    );
  }
}
