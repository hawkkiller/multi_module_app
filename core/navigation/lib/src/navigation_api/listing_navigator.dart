import 'package:flutter/widgets.dart';
import 'package:listing_navigator/listing_navigator.dart';
import 'package:navigation/src/navigation/listing_routes.dart';
import 'package:navigation/src/navigation/routes.dart';

final class ListingNavigatorGoRouter implements ListingNavigator {
  const ListingNavigatorGoRouter();

  @override
  void goToListing(BuildContext context) {
    ListingRoute().go(context);
  }
}