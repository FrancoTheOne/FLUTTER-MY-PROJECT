// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i9;
import 'package:my_poly_auction/src/app.dart' as _i1;
import 'package:my_poly_auction/src/pages/account/account.dart' as _i7;
import 'package:my_poly_auction/src/pages/auction/auction.dart' as _i4;
import 'package:my_poly_auction/src/pages/favor/favor.dart' as _i6;
import 'package:my_poly_auction/src/pages/home/home.dart' as _i3;
import 'package:my_poly_auction/src/pages/search/search.dart' as _i5;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    App.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.App(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    AuctionRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    FavorRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    AccountRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    AuctionRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.AuctionPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.SearchPage(),
      );
    },
    FavorRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.FavorPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.AccountPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          App.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: App.name,
              children: [
                _i8.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i8.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: HomeRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i8.RouteConfig(
              AuctionRouter.name,
              path: 'auction',
              parent: App.name,
              children: [
                _i8.RouteConfig(
                  AuctionRoute.name,
                  path: '',
                  parent: AuctionRouter.name,
                ),
                _i8.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: AuctionRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i8.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: App.name,
              children: [
                _i8.RouteConfig(
                  SearchRoute.name,
                  path: '',
                  parent: SearchRouter.name,
                ),
                _i8.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: SearchRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i8.RouteConfig(
              FavorRouter.name,
              path: 'favor',
              parent: App.name,
              children: [
                _i8.RouteConfig(
                  FavorRoute.name,
                  path: '',
                  parent: FavorRouter.name,
                ),
                _i8.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: FavorRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i8.RouteConfig(
              AccountRouter.name,
              path: 'account',
              parent: App.name,
              children: [
                _i8.RouteConfig(
                  AccountRoute.name,
                  path: '',
                  parent: AccountRouter.name,
                ),
                _i8.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: AccountRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.App]
class App extends _i8.PageRouteInfo<void> {
  const App({List<_i8.PageRouteInfo>? children})
      : super(
          App.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'App';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class AuctionRouter extends _i8.PageRouteInfo<void> {
  const AuctionRouter({List<_i8.PageRouteInfo>? children})
      : super(
          AuctionRouter.name,
          path: 'auction',
          initialChildren: children,
        );

  static const String name = 'AuctionRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SearchRouter extends _i8.PageRouteInfo<void> {
  const SearchRouter({List<_i8.PageRouteInfo>? children})
      : super(
          SearchRouter.name,
          path: 'search',
          initialChildren: children,
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class FavorRouter extends _i8.PageRouteInfo<void> {
  const FavorRouter({List<_i8.PageRouteInfo>? children})
      : super(
          FavorRouter.name,
          path: 'favor',
          initialChildren: children,
        );

  static const String name = 'FavorRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class AccountRouter extends _i8.PageRouteInfo<void> {
  const AccountRouter({List<_i8.PageRouteInfo>? children})
      : super(
          AccountRouter.name,
          path: 'account',
          initialChildren: children,
        );

  static const String name = 'AccountRouter';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.AuctionPage]
class AuctionRoute extends _i8.PageRouteInfo<void> {
  const AuctionRoute()
      : super(
          AuctionRoute.name,
          path: '',
        );

  static const String name = 'AuctionRoute';
}

/// generated route for
/// [_i5.SearchPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i6.FavorPage]
class FavorRoute extends _i8.PageRouteInfo<void> {
  const FavorRoute()
      : super(
          FavorRoute.name,
          path: '',
        );

  static const String name = 'FavorRoute';
}

/// generated route for
/// [_i7.AccountPage]
class AccountRoute extends _i8.PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: '',
        );

  static const String name = 'AccountRoute';
}
