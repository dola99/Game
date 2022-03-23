// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'custom_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LandingPage());
    },
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: DetailsPage(args.dataModel, key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(LandingRoute.name, path: '/'),
        RouteConfig(DetailsRoute.name, path: '/details-page')
      ];
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [DetailsPage]
class DetailsRoute extends PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({required DataModel dataModel, Key? key})
      : super(DetailsRoute.name,
            path: '/details-page',
            args: DetailsRouteArgs(dataModel: dataModel, key: key));

  static const String name = 'DetailsRoute';
}

class DetailsRouteArgs {
  const DetailsRouteArgs({required this.dataModel, this.key});

  final DataModel dataModel;

  final Key? key;

  @override
  String toString() {
    return 'DetailsRouteArgs{dataModel: $dataModel, key: $key}';
  }
}
