import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final Function(int) onPressed;
  final int pageIndex;

  const CustomNavigationBar({
    super.key,
    required this.pageIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: pageIndex,
      onTap: onPressed,
      elevation: 0,
      backgroundColor: Colors.red,
      items: const [
        BottomNavigationBarItem(
          // tooltip: "tooltip",
          // activeIcon: Text("active"),
          // backgroundColor: Colors.transparent,
          icon: Icon(Icons.home_max),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.label_outline),
          label: 'Categorías',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favoritos',
        ),
      ],
    );
  }
}
 

// setup 1
// return TabBar(
//     splashFactory: NoSplash.splashFactory,
//     indicator: const BoxDecoration(
//       border: Border(
//         top: BorderSide(
//           color: Colors.green,
//           width: 3.0,
//         ),
//       ),
//     ),
//     tabs: icons
//         .asMap()
//         .map((i, e) => MapEntry(
//               i,
//               Tab(
//                 icon: Icon(
//                   e,
//                   color: i == pageIndex ? Colors.green : Colors.black45,
//                   size: 30.0,
//                 ),
//               ),
//             ))
//         .values
//         .toList(),
//     onTap: onPressed,
//   );