import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Contar extends StatelessWidget {
  static String _title = 'ejemplo contador';

  const Contar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Contador(),
    );
  }
}

// aqui debemos digitar
class Contador extends StatefulWidget {
  Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50.0,
            ),
            Text(
              'El numero es : $_contar',
              style: const TextStyle(fontSize: 35.0, color: Color.fromARGB(255, 0, 253, 59)),
            ),
            const SizedBox(
              child: Image(
                image: AssetImage('images/img.jpg'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 20.0,
          color: Colors.amberAccent,
        ),
      ),
      floatingActionButton: _crearbuttoms(),
    );
  }

  _crearbuttoms() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: () {
            setState(() {
              _contar = 0;
            });
          },
          tooltip: 'el contador en 0',
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _contar = _contar + 1;
              if (_contar == 21) {
                _contar = 0;
              }
            });
          },
          tooltip: 'Incrementa el contador',
        ),
      ],
    );
  }
}