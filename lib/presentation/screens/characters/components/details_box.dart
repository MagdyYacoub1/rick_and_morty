import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/buisniss_logic/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/presentation/screens/characters/components/data_line.dart';

import '../../../../constants/colors.dart';

class DetailsBox extends StatelessWidget {
  final int index;
  const DetailsBox({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        decoration: BoxDecoration(
          //backgroundBlendMode: BlendMode.,
          color: AppColors.teal2.withOpacity(0.2),
          border: Border.all(
            color: AppColors.teal,
            width: 3.0,
          ),
        ),
        child: BlocBuilder<CharactersBloc, CharactersState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            return state.maybeWhen(
              fetched: (apiResponse) => Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CachedNetworkImage(imageUrl: apiResponse.data![index].image),
                  DataLine(
                      title: "Name", detail: apiResponse.data![index].name),
                  DataLine(
                      title: "Species",
                      detail: apiResponse.data![index].species),
                  DataLine(
                      title: "Type", detail: apiResponse.data![index].type),
                  DataLine(
                      title: "Gender", detail: apiResponse.data![index].gender),
                  DataLine(
                      title: "Origin",
                      detail: apiResponse.data![index].origin.name),
                  DataLine(
                      title: "Location",
                      detail: apiResponse.data![index].location.name),
                ],
              ),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
