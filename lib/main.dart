import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Page1()
    );
  }
}

class Page1 extends StatelessWidget {
  Page1({super.key});
  String login = '';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Вхід')
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ('Логін'),
                  ),
                  onChanged: (text) {login = text;}
              ),),
              Container(child: ElevatedButton(
                  child: Text('Ввійти'),
                  onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2(login:login)));}
              )),
            ],
          ),
        ));
  }
}

class Page2 extends StatelessWidget {
  String login;
  Page2({required this.login});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Вітаю')
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(child: Text('Дарую тобі майнер, '+login),),
              Container(child: ElevatedButton(
                  child: Text('Вийти'),
                  onPressed: (){Navigator.pop(context);}
              )),
            ],
          ),
        ));
  }
}
