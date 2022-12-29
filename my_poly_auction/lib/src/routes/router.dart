import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:my_poly_auction/src/app.dart';
import 'package:my_poly_auction/src/pages/account/account.dart';
import 'package:my_poly_auction/src/pages/auction/auction.dart';
import 'package:my_poly_auction/src/pages/favor/favor.dart';
import 'package:my_poly_auction/src/pages/home/home.dart';
import 'package:my_poly_auction/src/pages/search/search.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: App,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: HomePage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'auction',
          name: 'AuctionRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: AuctionPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'search',
          name: 'SearchRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: SearchPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'favor',
          name: 'FavorRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: FavorPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'account',
          name: 'AccountRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: AccountPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
