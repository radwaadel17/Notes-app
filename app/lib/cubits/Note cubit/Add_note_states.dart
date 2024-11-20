class AddNoteState {}

class AddNoteInit extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteFaluire extends AddNoteState {
  final String errorMessage;
  AddNoteFaluire(this.errorMessage);
}

class AddNoteSucsses extends AddNoteState {}
