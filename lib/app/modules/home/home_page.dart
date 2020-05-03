import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/models/banda_model.dart';
import 'package:flutter_player_music/environments.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.buscartodas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Play List'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder<List<BandaModel>>(
          future: controller.bandasFuture,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
                break;
              case ConnectionState.done:
                if (snapshot.hasData) {
                  return _buildListBandas(snapshot.data);
                } else {
                  print(snapshot.data);
                  return Container(
                    child: Text('Não há musicas'),
                  );
                }
                break;
              default:
                return Center(
                  child: CircularProgressIndicator(),
                );
                break;
            }
          },
        ));
  }

  ListView _buildListBandas(List<BandaModel> data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (_, int index) {
          var band = data[index];
          return ListTile(
            onTap: () => Modular.to.pushNamed('/player', arguments: band),
            leading: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Image.network(
                base_url + band.imagem,
                fit: BoxFit.contain,
              ),
            ),
            title: Text(band.nome),
            subtitle: Text(band.album),
            contentPadding: EdgeInsets.all(10),
          );
        });
  }
}
