part of 'notes_cubit_cubit.dart';

sealed class NotesCubitState extends Equatable {
  const NotesCubitState();

  @override
  List<Object> get props => [];
}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitSuccess extends NotesCubitState {
  List<NoteModel> notes;
  NotesCubitSuccess(this.notes);
}

final class NotesCubitfailure extends NotesCubitState {
  final String errMessage;

  NotesCubitfailure(this.errMessage);
}
