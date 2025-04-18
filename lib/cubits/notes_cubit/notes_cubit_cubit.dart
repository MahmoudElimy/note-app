import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:noote_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
}
