import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'hobby.dart';
import 'stopwatch.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  final String username;
  
  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String username = "";
  int pageIndex = 0;
  final pages = [
    const Page1(),
    const Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, ${widget.username}!'),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
            ),
            label: 'How to Use',
          ),
        ],
        currentIndex: pageIndex,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return StopWatch();
              }));
        },
        tooltip: 'Stopwatch',
        child: Icon(Icons.add_alarm),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250.0,
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                    'Al Ahmad Syah Huud.\n'
                    '124200035',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 250.0,
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Dimas Wicaksono.\n'
                      '124200053',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 250.0,
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Ihsan Reihansyah\n'
                      '124200075',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 250.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Hobby();
                  }));
                },
                child: Text('Hobby'),
              ),
            ),
            // SizedBox(height: 10),
            IconButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return LoginPage();
              }));
            },
                icon: Icon(Icons.logout, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text('Cara Menggunakan Aplikasi\n'
                '1. Login menggunakan username dan password\n'
                '2. Klik floating button untuk menggunakan fitur stopwatch\n'
                '3. Klik icon home pada bottom navigation bar untuk ke halaman utama\n'
                '4. Klik icon list untuk melihat cara penggunaan aplikasi\n'
                '5. Klik button hobby untuk menuju halaman hobby\n'
                '6. Klik icon logout untuk keluar dari aplikasi'),
          ),
        ],
      ),
    );
  }
}
