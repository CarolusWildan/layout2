import 'package:flutter/material.dart';
import 'package:guidedlayout2_2338/View/view_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // selectedIndex berkaitan dengan index halaman pada buttomnavigasi
  int _selectedIndex = 0;
  // fungsi yang nantinya akan dijalankan setiap menekan menu pada navbbar
  void _onItemTapped(int index) {
    // setState berkaitan dengan fungsi untuk menampilkan perubahan kondisi & dalam banyak kasus akan menggunakan ini
    setState(() {
      _selectedIndex = index;
    });
  }

  // menampung list widget yang akan ditampilkan sesuai index yang dipilih
  static const List<Widget> _widgetOptions = <Widget>[
    // index 0
    Center(
      child: Image(image: NetworkImage('https://picsum.photos/200/300'))
    ),
    // index 1
    ListNamaView(),
    // index 2
    Center(
      child: Text(
        'Index 3: Profile',
      ),
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // setting navigasi bar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list,),label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Profile'),
        ],
        currentIndex: _selectedIndex, // parameter : yang menampung index dari menu bottomnav
        onTap: _onItemTapped, // menjalankan fungsi _onItemTapped yang dimana fungsi ini akan mengubah nilai index dan melakukan setState sesuai index
      ),
      // bagian body dari home berdasarkan list _widgetOptions berdasarkan indeks selectedIndex
      body: _widgetOptions.elementAt(_selectedIndex), // mengubah tampilkan widget sesuai dengan nilai selectedIndex
    );
  }
}