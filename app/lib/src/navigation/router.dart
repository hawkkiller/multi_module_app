import 'package:go_router/go_router.dart';
import 'package:navigation/navigation.dart';

GoRouter $createGoRouter() {
  return GoRouter(routes: $appRoutes, initialLocation: '/listing');
}
