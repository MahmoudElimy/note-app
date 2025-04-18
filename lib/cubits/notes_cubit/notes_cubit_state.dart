// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'notes_cubit.dart';

sealed class NotesCubitState extends Equatable {
  const NotesCubitState();

  @override
  List<Object> get props => [];
}

class NotesInitial extends NotesCubitState {}

class NoteSuccess extends NotesCubitState {
}
