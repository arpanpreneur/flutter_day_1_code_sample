import 'package:flutter/material.dart';
import 'package:notekeeper_flutter/Models/Note.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notekeeper',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Notekeeper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Note> notes = [];

  getNotes() {
    notes = [
      Note("Note 1", "12/12/12"),
      Note("Note 2", "13/12/12"),
      Note("Note 3", "14/12/12"),
      Note("Note 4", "15/12/12"),
      Note("Note 5", "16/12/12"),
    ];
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();
    getNotes();
  }

  @override
  Widget build(BuildContext context) {
    print("Build method called");
    return Scaffold(
      appBar: AppBar(
        title: Text("Notekeeper"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {

          });
        }
      ),

      body: Container(
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              Note note = notes[index];
              return ListTile(
                title: Text(note.title),
                subtitle: Text(note.dt),
              );
            })
      ),
    );
  }
}
