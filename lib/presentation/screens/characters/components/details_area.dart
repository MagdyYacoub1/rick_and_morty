import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/buisniss_logic/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/presentation/screens/characters/components/data_line.dart';

/// Details area for each Character
class DetailsArea extends StatelessWidget {
  ///Creates details area
  const DetailsArea({
    required this.index,
    super.key,
  });

  ///Index to display
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return state.maybeWhen(
          fetched: (apiResponse) => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CharcaterImage(imageUrl: apiResponse.data![index].image),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DataLine(
                      title: 'Name',
                      detail: apiResponse.data![index].name,
                    ),
                    DataLine(
                      title: 'Species',
                      detail: apiResponse.data![index].species,
                    ),
                    DataLine(
                      title: 'Type',
                      detail: apiResponse.data![index].type,
                    ),
                    DataLine(
                      title: 'Gender',
                      detail: apiResponse.data![index].gender,
                    ),
                    DataLine(
                      title: 'Origin',
                      detail: apiResponse.data![index].origin.name,
                    ),
                    DataLine(
                      title: 'Location',
                      detail: apiResponse.data![index].location.name,
                    ),
                  ],
                ),
              ),
            ],
          ),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}

///
class CharcaterImage extends StatelessWidget {
  ///
  const CharcaterImage({
    required this.imageUrl,
    super.key,
  });

  ///
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: 300,
      height: 300,
      placeholderFadeInDuration: const Duration(milliseconds: 800),
      fadeInDuration: const Duration(milliseconds: 700),
      fadeOutDuration: const Duration(milliseconds: 500),
      placeholder: (context, url) => Align(
        alignment: Alignment.topCenter,
        child: LinearProgressIndicator(
          minHeight: 10,
          color: AppColors.teal,
          backgroundColor: AppColors.teal.withOpacity(0.3),
        ),
      ),
      fit: BoxFit.cover,
    );
  }
}
