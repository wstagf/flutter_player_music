import 'package:flutter/material.dart';

class PlayerMusicPage extends StatefulWidget {
  final String url;
  const PlayerMusicPage({Key key, this.url = ""}) : super(key: key);

  @override
  _PlayerMusicPageState createState() => _PlayerMusicPageState();
}

class _PlayerMusicPageState extends State<PlayerMusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Tocando musica' + widget.url),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          buildImageHeader(),
          buildNameMusic(),
        ],
      ),
    );
  }

  Widget buildNameMusic() {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            'Dois',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Text(
            'Legião Urbana',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }

  Container buildImageHeader() {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 20),
      child: Container(
        width: MediaQuery.of(this.context).size.width,
        height: MediaQuery.of(this.context).size.height * 0.4,
        decoration: BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
              image: NetworkImage(widget.url), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[700], blurRadius: 15, offset: Offset(2, 5)),
          ],
        ),
      ),
    );
  }
}
