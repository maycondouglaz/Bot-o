import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get child => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('images/joazinho.jpg')),
                        const Text('Joãozinho Smith',
                            style: TextStyle(
                                fontSize: 40.0,
                                fontFamily: 'Pacifico',
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text('Professor',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Source Sans Pro',
                                color: Colors.teal.shade100,
                                fontWeight: FontWeight.bold)),
                        Card(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 25.0),
                            child: ListTile(
                                leading: const Icon(Icons.phone, color: Colors.teal),
                                title: Text('+55 11 95869 4785',
                                    style: TextStyle(
                                        fontFamily: 'Source Sans Pro',
                                        color: Colors.teal.shade900,
                                        fontSize: 20.0)))),
                        ElevatedButton(
                          child: Text('Entrar'),
                          onPressed: () {
                            showAlertDialog2(context);
                          },
                        )
                      ],
                    )))));
  }

  showAlertDialog2(BuildContext context) {
    Widget cancelaButton = FlatButton(
      child: Text("Cancelar"),
      onPressed: () {},
    );
    Widget continuaButton = FlatButton(
      child: Text("Continar"),
      onPressed: () {},
    );
    //configura o AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text("Deseja continuar aprendendo Flutter ?"),
      actions: [
        cancelaButton,
        continuaButton,
      ],
    );
    //exibe o diálogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
