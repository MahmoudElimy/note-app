import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noote_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:noote_app/models/note_model.dart';
import 'package:noote_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: BlocBuilder<NotesCubit, NotesCubitState>(
        builder: (context, state) {
          if (state is NoteSuccess) {
            List<NoteModel> notes = state.notes ?? [];

            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: CustomNoteItem(note: notes[index]),
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
