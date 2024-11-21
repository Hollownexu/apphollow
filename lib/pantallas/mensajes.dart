import 'package:flutter/material.dart';
import 'package:myapp/pantallas/home.dart';
import 'package:myapp/pantallas/grupos.dart';
import 'package:myapp/pantallas/user.dart';
import 'package:myapp/pantallas/mensajes.dart';

class Mensajes extends StatelessWidget {
  final List<Map<String, dynamic>> elementosCarrusel = [
    {
      'imagen': 'images/user_placeholder.jpg',
      'nombre': 'Nombre User',
      'texto': 'Mensaje',
    },
    {
      'imagen': 'images/user_placeholder.jpg',
      'nombre': 'Nombre User',
      'texto': 'Mensaje',
    },
    {
      'imagen': 'images/user_placeholder.jpg',
      'nombre': 'Nombre User',
      'texto': 'Mensaje',
    },
    {
      'imagen': 'images/user_placeholder.jpg',
      'nombre': 'Nombre User',
      'texto': 'Mensaje',
    },
    {
      'imagen': 'images/user_placeholder.jpg',
      'nombre': 'Nombre User',
      'texto': 'Mensaje',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121835),
      appBar: AppBar(
        backgroundColor: Color(0xff121835),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 24, color: Colors.purple),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          children: [
            Image.asset('images/hollow.png', height: 24),
            SizedBox(width: 8),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "HOLLOW KNIGHT",
                style: TextStyle(
                  fontFamily: 'trajan',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.purple),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => User(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.inbox, color: Colors.purple),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mensajes(),
                ),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage("images/fdo.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: MaterialButton(
                      onPressed: () {},
                      color: Color(0xffb017ff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                      child: Text(
                        "Mensajes",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Grupos(),
                          ),
                        );
                      },
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        side: BorderSide(color: Color(0xffb017ff)),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                      child: Text(
                        "Grupos",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  itemCount: elementosCarrusel.length,
                  itemBuilder: (context, index) {
                    final elemento = elementosCarrusel[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 12),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              elemento['imagen']!,
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  elemento['nombre']!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  elemento['texto']!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
        child: Icon(Icons.home, color: Colors.white),
      ),
    );
  }
}
