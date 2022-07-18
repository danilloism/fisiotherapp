import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.folder_copy_outlined), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.insert_comment_outlined), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_outlined), label: ''),
      ],
      currentIndex: 0,
    );
  }
}
