import 'package:flutter/material.dart';

import 'custom_text_field.dart';
import 'form_widget.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsetsDirectional.symmetric(vertical: 50, horizontal: 12),
      child: FormWidget(),
    );
  }
}
