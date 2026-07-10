import 'package:flutter/material.dart';
import 'home_page.dart';
import 'berita_page.dart';
import 'profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  final List<Widget> pages = const [

    HomePage(),

    BeritaPage(),

    ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Sport News"),
        backgroundColor: Colors.blue,
      ),

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,

        onTap: (index){

          setState(() {

            currentIndex = index;

          });

        },

        items: const [

          BottomNavigationBarItem(

            icon: Icon(Icons.home),

            label: "Home",

          ),

          BottomNavigationBarItem(

            icon: Icon(Icons.article),

            label: "Berita",

          ),

          BottomNavigationBarItem(

            icon: Icon(Icons.person),

            label: "Profil",

          ),

        ],

      ),

    );
  }
}