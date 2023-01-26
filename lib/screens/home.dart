import 'package:flutter/material.dart';
import 'package:movieapp/screens/movies.dart';
import 'package:movieapp/screens/profile.dart';
import 'package:movieapp/screens/wishlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 2;
  final List<Widget> _totalPage = [MoviePage(), WishListPage(), ProfilePage()];

  void setCurrentIndex(int val) {
    setState(() {
      _currentIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff363931),
        body: SafeArea(
          child: _totalPage[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: setCurrentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movie'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ));
  }
}
