import 'package:flutter/material.dart';
import 'package:myapp/pantallas/jefe1.dart';
import 'package:myapp/pantallas/recompensas.dart';
import 'package:myapp/pantallas/consejos.dart';
import 'package:myapp/pantallas/user.dart';
import 'package:myapp/pantallas/mensajes.dart';
import 'package:myapp/pantallas/jefe2.dart';
import 'package:myapp/pantallas/jefe3.dart';
import 'package:myapp/pantallas/jefe4.dart';
import 'package:myapp/pantallas/jefe5.dart';

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> elementosCarrusel = [
    {
      'imagen': 'images/destello.png',
      'texto': 'Destello',
      'pagina': Jefe1(),
    },
    {
      'imagen': 'images/grimm.png',
      'texto': 'Grimm',
      'pagina': Jefe2(),
    },
    {
      'imagen': 'images/senoresmantis.png',
      'texto': 'Señores Mantis',
      'pagina': Jefe3(),
    },
    {
      'imagen': 'images/hollowknight.png',
      'texto': 'Hollow Knight',
      'pagina': Jefe4(),
    },
    {
      'imagen': 'images/maestro.png',
      'texto': 'Maestro de almas',
      'pagina': Jefe5(),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.purple,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Consejos(),
                        ),
                      );
                    },
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child:
                        Text("Consejos", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: elementosCarrusel.length,
                itemBuilder: (context, index) {
                  final elemento = elementosCarrusel[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => elemento['pagina']),
                      );
                    },
                    child: Container(
                      width: 150,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(elemento['imagen']!),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16),
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
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage('images/hollow.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EL CABALLERO",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "El Caballero Hueco, conocido como el Hollow Knight, es el misterioso protagonista del juego. Este guerrero despierta en el fondo de Hallownest sin recordar nada de su pasado. Su misión es explorar el reino, descubrir el origen de la plaga y buscar la forma de detenerla.",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              child: Text(
                "“Sellarás la luz cegadora que asola sus sueños”",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'trajan',
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {},
        child: Icon(Icons.public, color: Colors.white),
      ),
    );
  }
}
