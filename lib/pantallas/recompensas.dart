import 'package:flutter/material.dart';
import 'package:myapp/pantallas/home.dart';
import 'package:myapp/pantallas/consejos.dart';
import 'package:myapp/pantallas/user.dart';
import 'package:myapp/pantallas/mensajes.dart';

class Recompensas extends StatelessWidget {
  final List<Map<String, dynamic>> elementosCarrusel = [
    {
      'imagen': 'images/mediamascara.png',
      'texto': 'Fragmento de máscara',
    },
    {
      'imagen': 'images/ninodegrimm.png',
      'texto': ' Niño de Grimm (nivel 3)',
    },
    {
      'imagen': 'images/almadelmonarca.png',
      'texto': 'Alma de Monarca',
    },
    {
      'imagen': 'images/sombraafilada.png',
      'texto': 'Sombra Afilada',
    },
    {
      'imagen': 'images/furiadeloscaidos.png',
      'texto': 'Furia de los caidos',
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
                  onPressed: () {},
                  color: Colors.purple,
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
          Expanded(
            child: Container(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio:
                      0.8,
                ),
                itemCount: elementosCarrusel.length,
                itemBuilder: (context, index) {
                  final elemento = elementosCarrusel[index];
                  return GestureDetector(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
