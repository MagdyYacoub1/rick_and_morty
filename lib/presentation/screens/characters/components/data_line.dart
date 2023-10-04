import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/characters/components/liveness_indicator.dart';

/// Used to create data line in charcter card
class DataLine extends StatelessWidget {
  ///Creates data line in charcter card
  const DataLine({
    required this.title,
    required this.detail,
    super.key,
    this.status,
  });

  ///Data tirle
  final String title;

  /// used to show liveness indicator in name row
  final String? status;

  ///Data details
  final String detail;

  @override
  Widget build(BuildContext context) {
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
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (title == 'Name' && status != null)
              LivenessIndicator(
                status: status!,
              ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: FittedBox(
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  detail,
                  curve: Curves.easeInCubic,
                  speed: const Duration(milliseconds: 100),
                  textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
