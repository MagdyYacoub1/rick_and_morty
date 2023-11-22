import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/presentation/screens/locations_screen/components/location_card.dart';

import '../../../../business_logic/bloc/locations/locations_bloc.dart';
import '../../../../data/models/location.dart';

class LocationsList extends StatefulWidget {
  const LocationsList({super.key, required this.locations});

  final List<Location> locations;
  @override
  State<LocationsList> createState() => _LocationsListState();
}

class _LocationsListState extends State<LocationsList> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        context.read<LocationBloc>().add(const LocationFetchMore());
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
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
