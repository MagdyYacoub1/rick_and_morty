import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/colors.dart';

import '../../../../data/models/location.dart';

/// Location crads display the locations image and name
class LocationCard extends StatelessWidget {
  /// Location card
  const LocationCard({required this.location, super.key});

  /// index of the location displayed
  final Location location;

  @override
  Widget build(BuildContext context) {
    const cardRadius = 15.0;
    return Material(
      clipBehavior: Clip.antiAlias,
      color: AppColors.teal.withOpacity(0.3),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(cardRadius),
        side: const BorderSide(
          width: 3,
          color: AppColors.teal,
        ),
      ),
      /*child: Container(
        decoration: BoxDecoration(image: CustomCachedImage(height: 100,imageUrl: location.,)),
      ),*/
    );
  }
}
