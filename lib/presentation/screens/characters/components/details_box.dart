import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/colors.dart';

class DetailsBox extends StatelessWidget {
  const DetailsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //backgroundBlendMode: BlendMode.,
          color: AppColors.teal2.withOpacity(0.5),
          border: Border.all(
            color: AppColors.teal,
            width: 3.0,
          )),
    );
  }
}
