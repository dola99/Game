import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:game/models/data_model.dart';
import 'package:game/screens/details_screen/detail_screen.dart';
import 'package:game/screens/main_screen/landing_page.dart';
part 'custom_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: LandingPage, initial: true),
  AutoRoute(page: DetailsPage)
])
class AppRouter extends _$AppRouter {}
