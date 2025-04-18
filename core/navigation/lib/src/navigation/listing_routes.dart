import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:listing/listing.dart';

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
