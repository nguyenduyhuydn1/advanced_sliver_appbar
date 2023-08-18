import 'package:custom_appbar/presentation/views/views.dart';
import 'package:flutter/material.dart';

import 'package:custom_appbar/presentation/widgets/custom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 0;

  void _handlePressed(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  final List<Widget> viewRoutes = const [
    HomeView(),
    TabbarSliverAppbar(),
    AdvancedSliverAppbar(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomNavigationBar(
        pageIndex: _pageIndex,
        onPressed: _handlePressed,
      ),
    );
  }
}

// set up 1
// return DefaultTabController(
//   length: _icons.length,
//   child: Scaffold(
//     body: IndexedStack(
//       index: _pageIndex,
//       children: viewRoutes,
//     ),
//     bottomNavigationBar: CustomNavigationBar(
//       icons: _icons,
//       pageIndex: _pageIndex,
//       onPressed: _handlePressed,
//     ),
//   ),
// );