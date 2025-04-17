import 'package:flutter/material.dart';
import 'package:noote_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:noote_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteModalBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
