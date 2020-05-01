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
          buildProgressbar(),
          buildButtons()
        ],
      ),
    );
  }

  Widget buildButtons() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          FlatButton(
            child: Icon(
              Icons.fast_rewind,
              size: 40,
            ),
            onPressed: () {},
          ),
          Expanded(
            child: FlatButton(
              child: Icon(
                Icons.play_circle_outline,
                size: 40,
              ),
              onPressed: () {},
            ),
          ),
          FlatButton(
            child: Icon(
              Icons.fast_forward,
              size: 40,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget buildProgressbar() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 30, right: 35, left: 35),
          child: LinearProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            value: 0.35,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, right: 35, left: 35),
          child: Row(
            children: <Widget>[
              Text('0:15'),
              Expanded(
                child: Container(),
              ),
              Text('2:35'),
            ],
          ),
        )
      ],
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
