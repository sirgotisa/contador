import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 30.0);

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Título"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hola mundo!", style: estiloTexto),
            Text('$conteo', style: estiloTexto,)
          ],
        )
        ),
      
      
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print('Hola mundo');
            //conteo = conteo + 1;
          },
        ),
    );
  }

}