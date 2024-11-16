import 'package:flutter/material.dart';
import 'package:myapp/pantallas/home.dart';
import 'package:myapp/pantallas/recompensas.dart';
import 'package:myapp/pantallas/mensajes.dart';
import 'package:myapp/pantallas/user.dart';

class Consejos extends StatelessWidget {
  final List<Map<String, dynamic>> elementosCarrusel = [
    {
      'imagen': 'images/consejos/1.jpg',
      'texto': 'Domina el esquive: Usa el salto y el dash para evitar ataques y mantenerte en posición para contraatacar.',
    },
    {
      'imagen': 'images/consejos/2.png',
      'texto': 'Equipa los amuletos correctos: Usa amuletos como Manto de sombra para atravesar ataques y Concentración rápida para curarte más rápido.',
    },
    {
      'imagen': 'images/consejos/3.jpg',
      'texto': 'Aprende los patrones de los jefes: Observa y anticipa los ataques de los jefes para evitar daño y golpear en el momento adecuado.',
    },
    {
      'imagen': 'images/consejos/4.jpg',
      'texto': 'Usa el entorno: Aprovecha el terreno para esquivar ataques y atacar desde lugares seguros.',
    },
    {
      'imagen': 'images/consejos/5.jpg',
      'texto': 'No te sientas presionado por avanzar rápido, Hollow Knight premia a los jugadores que exploran a fondo y dominan el entorno y los jefes. Tómate tu tiempo para mejorar y aprender de cada batalla. La paciencia es clave en este juego.',
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Jefes", style: TextStyle(color: Colors.white)),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Recompensas(),
                      ),
                    );
                  },
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Recompensas",
                      style: TextStyle(color: Colors.white)),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child:
                      Text("Consejos", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Text(
              "“Sellarás la luz cegadora que asola sus sueños”",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'trajan',
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 434, // Ajusta la altura según tus necesidades
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Número de columnas
                crossAxisSpacing: 8, // Espacio horizontal entre elementos
                mainAxisSpacing: 8, // Espacio vertical entre elementos
                childAspectRatio:
                    1.2, // Relación de aspecto para el tamaño de los elementos
              ),
              itemCount: elementosCarrusel.length,
              itemBuilder: (context, index) {
                final elemento = elementosCarrusel[index];
                return GestureDetector(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(elemento['imagen']!),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Text(
                            elemento['texto']!,
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {},
        child: Icon(Icons.public, color: Colors.white),
      ),
    );
  }
}
