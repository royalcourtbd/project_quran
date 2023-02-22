import 'package:flutter/material.dart';
import 'package:project_quran/presentation/home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List pages = [
  //   const HomePage(),
  //   const BookmarkPage(),
  //   const ShowMemoriesPage(),
  //   const LastReadPage(),
  //   const PublicationsPage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      extendBody: true,
    );
  }
}
