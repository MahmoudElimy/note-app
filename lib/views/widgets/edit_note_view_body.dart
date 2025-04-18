import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noote_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:noote_app/models/note_model.dart';
import 'package:noote_app/views/widgets/custom_app_bar.dart';
import 'package:noote_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 32),
          CustomFormTextField(
            onChanged: (data) {
              title = data;
            },
            hintText: widget.note.title,
          ),
          SizedBox(height: 16),
          CustomFormTextField(
            onChanged: (data) {
              subTitle = data;
            },
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
