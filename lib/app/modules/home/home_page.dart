import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Play List'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (_, int index) {
              return ListTile(
                onTap: () => Modular.to.pushNamed('/player'),
                leading: Image.network(
                    'https://img.elo7.com.br/product/zoom/15D4C1F/adesivo-rock-legiao-urbana-1-x7cm-dire-straits.jpg'),
                title: Text('Dois'),
                subtitle: Text('Legião Urbana'),
                contentPadding: EdgeInsets.all(10),
              );
            }));
  }
}
