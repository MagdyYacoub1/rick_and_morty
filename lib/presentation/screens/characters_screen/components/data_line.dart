import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen/components/liveness_indicator.dart';

/// Used to create data line in charcter card
class DataLine extends StatelessWidget {
  ///Creates data line in charcter card
  const DataLine({
    required this.title,
    required this.detail,
    this.bigger = false,
    super.key,
    this.status,
  });

  ///Data tirle
  final String title;

  /// used to show liveness indicator in name row
  final String? status;

  ///Data details
  final String detail;

  /// Display bigger size suitable for details screen
  final bool bigger;

  @override
  Widget build(BuildContext context) {
    const animate = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: bigger
                    ? Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        )
                    : Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (title == 'Species' && status != null)
              LivenessIndicator(
                status: status!,
                bigger: bigger,
              ),
          ],
        ),
        SizedBox(height: bigger ? 7.0 : 0.0),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: FittedBox(
            child: animate
                ? AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        detail,
                        curve: Curves.easeIn,
                        speed: Duration(milliseconds: bigger ? 70 : 100),
                        textStyle: bigger
                            ? Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  overflow: TextOverflow.ellipsis,
                                )
                            : Theme.of(context).textTheme.bodySmall!.copyWith(
                                  overflow: TextOverflow.ellipsis,
                                ),
                      ),
                    ],
                  )
                : Text(
                    detail,
                    style: bigger
                        ? Theme.of(context).textTheme.bodyLarge!.copyWith(
                              overflow: TextOverflow.ellipsis,
                            )
                        : Theme.of(context).textTheme.bodySmall!.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                  ),
          ),
        ),
      ],
    );
  }
}
