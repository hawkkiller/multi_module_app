import 'dart:async';

import 'package:app/src/dependencies/composition_root.dart';
import 'package:app/src/dependencies/dependencies_container.dart';
import 'package:app/src/navigation/routes.dart';
import 'package:app/src/widget/feature_dependencies_scope.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final container = await buildDependenciesContainer();

      runApp(RootContext(container: container));
    },
    (error, stack) {
      debugPrint('Error: $error \nStack: $stack');
    },
  );
}

class RootContext extends StatefulWidget {
  const RootContext({super.key, required this.container});

  final DependenciesContainer container;

  @override
  State<RootContext> createState() => _RootContextState();
}

class _RootContextState extends State<RootContext> {
  final _router = createRouter();

  @override
  Widget build(BuildContext context) {
    return FeatureDependenciesScope(
      container: widget.container,
      child: MaterialApp.router(debugShowCheckedModeBanner: false, routerConfig: _router),
    );
  }
}
