import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noote_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:noote_app/models/note_model.dart';
import 'package:noote_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  note.title,
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
              ),
              subtitle: Text(
                note.subTitle,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              trailing: IconButton(
                onPressed: () async {
                  await note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, top: 16),
              child: Text(
                note.date,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
