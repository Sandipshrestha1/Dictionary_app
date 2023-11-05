import 'package:dictionary_app/repo/word_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DictionaryCubit extends Cubit<DictionaryState> {
  final WordRepository _repository;

  DictionaryCubit(this._repository) : super(NoWordSearchedState());

  final queryController = TextEditingController();

  Future getWOrdSearched() async {
    emit(WordSearchingState());

    try {
  final words =
      await _repository.getWordsFromDictionary(queryController.text);
  if (words == null) {
    emit(ErrorState());
  } else {

//  This is  writter to check data in console
print(words.toString());
emit(WordSearchedState(words));

emit(NoWordSearchedState());


   // WordSearchedState(words);
  }
} on Exception catch (e) {

print(e);
emit(ErrorState());
}
  }
}

abstract class DictionaryState {}

class NoWordSearchedState extends DictionaryState {}

class WordSearchingState extends DictionaryState {}

class WordSearchedState extends DictionaryState {
  final List<WordResponse> words;

  WordSearchedState(this.words);
}

class ErrorState extends DictionaryState {





}
