import 'package:flutter/material.dart';
import 'home_page.dart';

class Hobby extends StatelessWidget {
  const Hobby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hobby'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _hobbyAhmad(),
            SizedBox(height: 15),
            _hobbyRehan(),
            SizedBox(height: 15),
            _hobbyDimas(),
          ],
        ),
      ),
    );
  }

  Widget _hobbyAhmad() {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: const Text('Hobby Ahmad'),
            subtitle: Text(
              'Mendengarkan Music',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Biasanya mendengarkan musik jepang',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Image.asset('assets/images/music.jpg'),
        ],
      ),
    );
  }

  Widget _hobbyRehan() {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: const Text('Hobby Rehan'),
            subtitle: Text(
              'Bermain Basket',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Dipegang bolanya',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Image.asset('assets/images/basket.jpg'),
        ],
      ),
    );
  }

  Widget _hobbyDimas() {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: const Text('Hobby Dimas'),
            subtitle: Text(
              'Berkemah',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Implementasi dari Dasa Dharma Pramuka ke-2',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Image.asset('assets/images/camping.jpg'),
        ],
      ),
    );
  }
}
