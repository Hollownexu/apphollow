import 'package:flutter/material.dart';
import 'package:myapp/widget/Boton.dart';
import 'package:myapp/pantallas/home.dart';
import 'package:myapp/pantallas/mensajes.dart';

class User extends StatelessWidget {
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
          // Imagen de fondo
          Image(
            image: const AssetImage("images/fdo.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagen de usuario redonda
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/user_placeholder.jpg'), // Imagen provisional
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Título de nombre de usuario
                Text(
                  "Nombre de Usuario",
                  style: TextStyle(
                    fontFamily: 'trajan',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),

                // Texto de rango
                Text(
                  "Rango: Caballero",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 16),

                // Botón debajo del rango
                Boton(
                  titulo: "MENSAJES",
                  padding: EdgeInsets.all(16),
                  textColor: Color(0xffffffff),
                  width: 140,
                  height: 40,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mensajes(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 32),
              ],
            ),
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