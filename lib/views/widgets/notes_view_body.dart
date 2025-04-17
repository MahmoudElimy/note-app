import 'package:flutter/material.dart';
import 'package:noote_app/views/widgets/custom_app_bar.dart';
import 'package:noote_app/views/widgets/custom_note_item.dart';
import 'package:noote_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Notes',icon: Icons.search,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
