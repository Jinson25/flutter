import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  final List<shop> shops = [
    shop(
      name: 'Laptop Gaming',
      age: 5,
      image: 'images/img.png',
      description: 'Inten 11generacion rtx 1050',
    ),
    shop(
      name: 'Laptop Gaming',
      age: 5,
      image: 'images/img.png',
      description: 'Inten 11generacion rtx 1050',
    ),
    shop(
      name: 'Laptop Gaming',
      age: 5,
      image: 'images/img.png',
      description: 'Inten 11generacion rtx 1050',
    ),
    shop(
      name: 'Laptop Gaming',
      age: 5,
      image: 'images/img.png',
      description: 'Inten 11generacion rtx 1050',
    ),
  ];
  

  void _showAlert(BuildContext context, shop shops) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Detalles de ${shops.name}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(shops.image),
              SizedBox(height: 10),
              Text('año: ${shops.age} años'),
              SizedBox(height: 10),
              Text('Descripción:'),
              Text(shops.description),
            ],
                      ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
            TextButton(
              onPressed: () {
                // Lógica para aceptar la alerta
                Navigator.of(context).pop();
                // Realizar acciones adicionales aquí
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicacion Movil Widget Jinson Medina'),
      ),
      body: ListView.builder(
        itemCount: shops.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(shops[index].image),
            ),
            title: Text(shops[index].name),
            onTap: () {
              _showAlert(context, shops[index]);
            },
          );
        },
      ),
    );
  }
}

class shop {
  final String name;
  final int age;
  final String image;
  final String description;

  shop({
    required this.name,
    required this.age,
    required this.image,
    required this.description,
  });
}

