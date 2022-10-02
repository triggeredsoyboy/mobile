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
      body: Column(
        children: <Widget>[
          _hobbyAhmad(),
          _hobbyRehan(),
          _hobbyDimas(),
        ],
      ),
    );
  }

  Widget _hobbyAhmad() {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
              child: Text('Hobby Ahmad: Bermain Game'),
          ),
        ),
      ),
    );
  }

  Widget _hobbyRehan() {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
              child: Text('Hobby Rehan: Bermain Bola Basket'),
          ),
        ),
      ),
    );
  }

  Widget _hobbyDimas() {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
              child: Text('Hobby Dimas: Berkemah'),
          ),
        ),
      ),
    );
  }
}
