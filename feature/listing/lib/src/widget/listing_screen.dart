import 'package:flutter/material.dart';
import 'package:listing/src/dependencies/listing_dependencies.dart';
import 'package:settings_api/settings_api.dart';

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
        child: StreamBuilder(
          stream: settingsController.settingsStream,
          initialData: settingsController.settings,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final settings = snapshot.data;
              return Text('Settings: ${settings.toString()}');
            }
        
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
