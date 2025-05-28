import 'package:flutter/material.dart';

class NavigationScaffold extends StatelessWidget {
  const NavigationScaffold({
    required this.children,
    required this.currentIndex,
    required this.onIndexChanged,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final int currentIndex;
  final ValueChanged<int> onIndexChanged;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/image.png',
            height: 100,
            width: 100,
          ),
          Expanded(child: IndexedStack(index: currentIndex, children: children)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onIndexChanged,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.category_rounded), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_rounded), label: 'Settings'),
        ],
      ),
    );
  }
}
