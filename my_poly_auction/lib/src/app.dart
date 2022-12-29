import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_poly_auction/src/routes/router.gr.dart';

class _Tab {
  final int index;
  final String label;
  final IconData icon;
  final PageRouteInfo route;

  const _Tab(this.index, this.label, this.icon, this.route);
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _content = const [
    _Tab(0, 'Home', Icons.home, HomeRouter()),
    _Tab(1, 'Auction', Icons.token, AuctionRouter()),
    _Tab(2, 'Search', Icons.search, SearchRouter()),
    _Tab(3, 'Favorite', Icons.favorite, FavorRouter()),
    _Tab(4, 'Account', Icons.person, AccountRouter()),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _content.map((page) => page.route).toList(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _content
                .map((page) => BottomNavigationBarButton(
                      label: page.label,
                      icon: page.icon,
                      onTap: () => tabsRouter.setActiveIndex(page.index),
                      active: tabsRouter.activeIndex == page.index,
                    ))
                .toList(),
          ),
        );
      },
    );
  }
}

class BottomNavigationBarButton extends StatefulWidget {
  const BottomNavigationBarButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.label = 'label',
    this.active = false,
  });

  final String label;
  final IconData icon;
  final Function onTap;
  final bool active;

  @override
  State<BottomNavigationBarButton> createState() =>
      _BottomNavigationBarButtonState();
}

class _BottomNavigationBarButtonState extends State<BottomNavigationBarButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: () => widget.onTap(),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 44),
                  child: Text(
                    widget.label,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: 0,
            right: 0,
            top: widget.active ? 0.0 : 8.0,
            child: Transform.translate(
              offset: const Offset(0, -8),
              child: Center(
                child: GestureDetector(
                  onTap: () => widget.onTap(),
                  child: Container(
                    width: 56,
                    height: 44,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(28.0),
                          topRight: Radius.circular(28.0)),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color:
                              widget.active ? Colors.black : Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16.0)),
                        ),
                        child: Center(
                          child: Icon(
                            widget.icon,
                            color: widget.active ? Colors.white : Colors.grey,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
