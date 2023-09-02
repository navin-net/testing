import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:menu_desgin/view/note_app/database/note_connection.dart';
import 'package:menu_desgin/view/note_app/model/note_model.dart';
import 'package:menu_desgin/view/note_app/view/add_note_screen.dart';
import 'package:menu_desgin/view/note_app/widget/note_widget.dart';
import 'package:menu_desgin/view/note_app/widget/refresh_widget.dart';


class NoteHome extends StatefulWidget {
  const NoteHome({super.key});

  @override
  State<NoteHome> createState() => _NoteHomeState();
}

class _NoteHomeState extends State<NoteHome> {
  final searchController = TextEditingController();
  List<NoteModel> noteList = [];
  Future<void> getNotes() async {
    await NoteDatabase().getNotes().then((value) {
      setState(() {
        noteList = value;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        // title: const Text('Note'),
      ),
      body: Column(
       children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: searchController,
              onChanged: (values) async {
                await NoteDatabase()
                    .searchResult(searchController.text)
                    .then((value) {
                  setState(() {
                    noteList = value;
                  });
                });
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                  hintText: 'search note'),
            ),
          ),


              //   SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         margin: EdgeInsets.all(10),
              //         width: 100,
              //         height: 50,
              //         decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 79, 78, 80),
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //       ),
              //       Container(
              //         margin: EdgeInsets.all(10),
              //         width: 100,
              //         height: 50,
              //         decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 79, 78, 80),
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //       ),
              //       Container(
              //         margin: EdgeInsets.all(10),
              //         width: 100,
              //         height: 50,
              //         decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 79, 78, 80),
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //       ),
              //       Container(
              //         margin: EdgeInsets.all(10),
              //         width: 100,
              //         height: 50,
              //         decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 79, 78, 80),
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //       ),

              //     ],
              //   ),

              // ),

              //  Expanded(
              //         child: Container(
              //           height: 20,
              //           color: Colors.red,
              //           child: const Center(
              //             child: Text('Create'),
              //           ),
              //         ),
              //         ),
          Expanded(
            child: RefreshWidget(
                    onRefresh: getNotes,
                    child: ListView.builder(
                        itemCount: noteList.length,
                        itemBuilder: (context, index) =>
                            NoteWidget().noteCard(noteList[index])))
                .buildAndroid(context),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddUpdateNoteScreen(),
              ));
        },
        child: const Icon(Icons.add),


      ),


    );
  }
}
