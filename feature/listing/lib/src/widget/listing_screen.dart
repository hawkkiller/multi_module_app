import 'package:flutter/material.dart';
import 'package:listing/src/dependencies/listing_dependencies.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final container = ListingDependencies.of(context);

    return Scaffold(
      body: Center(
        child: ListenableBuilder(
          listenable: container.settingsController,
          builder: (context, child) {
            return Text('Settings: ${container.settingsController.settings.toString()}');
          },
        ),
      ),
    );
  }
}
