import 'package:flutter/material.dart';
import 'package:chatta/vn.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> notes = ['Voice note 1', 'Voice note 2', 'Voice note 3', 'Voice note 4', 'Voice note 5', 'Voice note 6', 'Voice note 7', 'Voice note 8', 'Voice note 9', 'Voice note 10'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatter'),
      ),
      body: SafeArea(child: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: (){
                print('Tapped');
              },
              title: Text(notes[index]),
              trailing: Icon(Icons.play_arrow),
            )
          );
        },
      )),
      floatingActionButton: newNoteButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

