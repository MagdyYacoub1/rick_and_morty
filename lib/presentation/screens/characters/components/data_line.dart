import 'package:flutter/material.dart';

/// Used to create data line in charcter card
class DataLine extends StatelessWidget {
  ///Creates data line in charcter card
  const DataLine({required this.title, required this.detail, super.key});

  ///Data tirle
  final String title;

  ///Data details
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$title: ',
          style: Theme.of(context).textTheme.headlineSmall,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          detail,
          style: Theme.of(context).textTheme.headlineSmall,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
