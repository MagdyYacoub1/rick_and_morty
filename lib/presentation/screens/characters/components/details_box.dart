import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/buisniss_logic/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/constants/colors.dart';
import 'package:rick_and_morty/constants/helper.dart';
import 'package:rick_and_morty/presentation/screens/characters/components/data_line.dart';

///details box shows details for each character
class DetailsBox extends StatelessWidget {
  ///creates a box to display details on each character
  const DetailsBox({required this.index, super.key});

  ///identify which charcter to be displayed
  final int index;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CharacterFrame(),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            //backgroundBlendMode: BlendMode.,
            color: AppColors.teal2.withOpacity(0.2),
            border: Border.all(
              color: AppColors.teal,
              width: 3,
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
                    CachedNetworkImage(
                      imageUrl: apiResponse.data![index].image,
                    ),
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
                orElse: () => const SizedBox(),
              );
            },
          ),
        ),
      ),
    );
  }
}

/// used to paint frame around each character
class CharacterFrame extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Log.debug(size);
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.square;

    final path = Path()
      ..moveTo(0, size.height / 2)
      ..lineTo(0, size.height / 2 - 100)
      ..lineTo(-600, size.height / 2 - 30)
      ..lineTo(-15, size.height / 2 - 10)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
