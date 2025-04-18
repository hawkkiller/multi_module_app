import 'package:app/src/navigation/routes/listing_routes.dart';
import 'package:flutter/widgets.dart';
import 'package:app/src/navigation/routes.dart';
import 'package:listing_navigator/listing_navigator.dart';

final class ListingNavigatorGoRouter implements ListingNavigator {
  const ListingNavigatorGoRouter();

  @override
  void goToListing(BuildContext context) {
    ListingRoute().go(context);
  }
}