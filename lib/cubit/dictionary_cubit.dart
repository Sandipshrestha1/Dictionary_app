import 'package:dictionary_app/repo/word_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DictionaryCubit extends Cubit<DictionaryState> {
final WordRepository _repository;

  DictionaryCubit(this._repository) : super(NoWordSearchedState());
}
abstract class DictionaryState {}
class NoWordSearchedState extends DictionaryState {}
class WordSearchingState extends DictionaryState {}
class WordSearchedState extends DictionaryState{
  final List<WordResponse> words;

  WordSearchedState(this.words);
}


class ErrorState extends DictionaryState {}