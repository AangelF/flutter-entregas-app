import 'package:entregas/moviemientos_entregas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

//AppBar
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Entregas';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        //Edicion de AppBar para que cambie su color de azul a morado.
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            appTitle,
            style: TextStyle(
              color: Color(0xFFF1E6FF), //kPrimaryLightColor
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color(0xFF6F35A5), //kPrimaryColor
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

//Body Formulario
class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //Input de Tipo de Transporte
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 45),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Tipo de Transporte',
              labelStyle: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF6F35A5),
                  fontWeight: FontWeight.bold),
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
              ),
            ),
          ),
        ),

        //Input de Transportista
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 45),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Transportista',
              labelStyle: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF6F35A5),
                  fontWeight: FontWeight.bold),
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
              ),
            ),
          ),
        ),

        //Input de Placa
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 45),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Placa',
              labelStyle: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF6F35A5),
                  fontWeight: FontWeight.bold),
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
              ),
            ),
          ),
        ),

        //Input de operador
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 45),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Operador',
              labelStyle: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF6F35A5),
                  fontWeight: FontWeight.bold),
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
              ),
            ),
          ),
        ),

        //Input de Peso total
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 45),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Peso Total',
              labelStyle: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF6F35A5),
                  fontWeight: FontWeight.bold),
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
              ),
            ),
          ),
        ),

        //Boton de guardado y edicion de propiedades
        Center(
          child: RaisedButton(
            child: Text(
              'Guardar',
              style: TextStyle(color: Color(0xFFF1E6FF)),
            ),
            color: Color(0xFF6F35A5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            //Accion de ida a la siguiente pagina
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => movimientos_entregas()),
              );
            },
          ),
        ),
      ],
    );
  }
}
