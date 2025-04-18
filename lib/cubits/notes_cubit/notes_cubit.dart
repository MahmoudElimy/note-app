import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noote_app/constats.dart';
import 'package:noote_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes = notesBox.values.toList();
    emit(NoteSuccess(notes:notes));
    
  }
}
