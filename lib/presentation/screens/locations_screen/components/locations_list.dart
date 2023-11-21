import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/locations_screen/components/location_card.dart';

import '../../../../data/models/location.dart';

class LocationsList extends StatefulWidget {
  const LocationsList({super.key, required this.locations});

  final List<Location> locations;
  @override
  State<LocationsList> createState() => _LocationsListState();
}

class _LocationsListState extends State<LocationsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //controller: scrollController,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      itemCount: widget.locations.length + 1,
      itemBuilder: (context, index) {
        return index < widget.locations.length
            ? LocationCard(location: widget.locations[index])
            : const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              );
      },
    );
  }
}
