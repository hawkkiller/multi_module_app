import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:listing/src/widget/listing_screen.dart';

class ListingBranch extends StatefulShellBranchData {
  const ListingBranch();
}

class ListingRoute extends GoRouteData {
  const ListingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ListingScreen();
  }
}
