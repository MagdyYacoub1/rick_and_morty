import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

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
        ),
      ),
      child: Column(
        children: [
          CachedNetworkImage(imageUrl: "imageUrl"),
          Text(
            "data",
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
