import 'package:flutter/material.dart';
import 'package:listing/src/dependencies/listing_dependencies.dart';
import 'package:settings/settings.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final container = ListingDependencies.of(context);
    return ListingView(settingsController: container.settingsController);
  }
}

class ListingView extends StatelessWidget {
  const ListingView({required this.settingsController, super.key});

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListenableBuilder(
          listenable: settingsController,
          builder: (context, child) {
            return Text('Settings: ${settingsController.settings.toString()}');
          },
        ),
      ),
    );
  }
}
