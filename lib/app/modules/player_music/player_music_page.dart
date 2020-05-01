import 'package:flutter/material.dart';

class PlayerMusicPage extends StatefulWidget {
  final String title;
  const PlayerMusicPage({Key key, this.title = "PlayerMusic"})
      : super(key: key);

  @override
  _PlayerMusicPageState createState() => _PlayerMusicPageState();
}

class _PlayerMusicPageState extends State<PlayerMusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
