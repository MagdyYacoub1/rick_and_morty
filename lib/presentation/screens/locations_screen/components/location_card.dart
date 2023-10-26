import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/bloc/locations/locations_bloc.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/presentation/widgets/custom_cached_image.dart';

/// Location crads display the locations image and name
class LocationCard extends StatelessWidget {
  /// Location card
  const LocationCard({required this.locationIndex, super.key});

  /// index of the location displayed
  final int locationIndex;

  @override
  Widget build(BuildContext context) {
    final location = (context.read<LocationBloc>().state as LocationFetched)
        .apiResponse
        .data![locationIndex];
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
