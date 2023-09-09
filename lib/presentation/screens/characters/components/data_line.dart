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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            softWrap: false,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              width: 210,
              child: Text(
                detail,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
