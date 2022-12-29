import 'package:flutter/material.dart';
import 'package:my_poly_auction/src/pages/account/account.dart';
import 'package:my_poly_auction/src/pages/auction/auction.dart';
import 'package:my_poly_auction/src/pages/favor/favor.dart';
import 'package:my_poly_auction/src/pages/home/home.dart';
import 'package:my_poly_auction/src/pages/search/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // scaffoldBackgroundColor: Colors.grey.shade400,
          ),
      home: const BottomNavigationController(),
    );
  }
}

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({super.key});

  @override
  State<BottomNavigationController> createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  int _selectedIndex = 0;
  final pages = const [
    HomePage(),
    AuctionPage(),
    SearchPage(),
    FavorPage(),
    AccountPage()
  ];

  final List _content = const [
    {'index': 0, 'label': 'Home', 'icon': Icons.home, 'page': HomePage()},
    {
      'index': 1,
      'label': 'Auction',
      'icon': Icons.token,
      'page': AuctionPage()
    },
    {'index': 2, 'label': 'Search', 'icon': Icons.search, 'page': SearchPage()},
    {
      'index': 3,
      'label': 'Favorite',
      'icon': Icons.favorite,
      'page': FavorPage()
    },
    {
      'index': 4,
      'label': 'Account',
      'icon': Icons.person,
      'page': AccountPage()
    },
  ];

  Function _onItemTapped(int index) {
    return () {
      setState(() {
        _selectedIndex = index;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _content[_selectedIndex]['page'],
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _content
              .map((page) => BottomNavigationBarButton(
                    label: page['label'],
                    icon: page['icon'],
                    onTap: _onItemTapped(page['index']),
                    active: _selectedIndex == page['index'],
                  ))
              .toList(),
        ),
      ),
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
