import 'package:flutter/material.dart';
import 'package:noote_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: (){},child: const Icon(Icons.add),),
    );
  }
}

