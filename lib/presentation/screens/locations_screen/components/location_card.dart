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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
          clipBehavior: Clip.antiAlias,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(cardRadius),
            side: const BorderSide(
              width: 3,
              color: AppColors.teal,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        location.name,
                        softWrap: true,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.teal2,
                          shadows: [
                            const Shadow(
                              blurRadius: 5,
                              color: AppColors.teal2,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        location.type,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.teal2,
                          shadows: [
                            const Shadow(
                              blurRadius: 5,
                              color: AppColors.teal2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
