import 'package:dictionary_app/cubit/dictionary_cubit.dart';
import 'package:dictionary_app/screens/list/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  getDictionaryFormWidget(BuildContext context) {
    final cubit = context.watch<DictionaryCubit>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Spacer(),
          const Text(
            "Dictionary App",
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Search any word you want quickely",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          TextField(
            controller: cubit.queryController,
            decoration: InputDecoration(
              hintText: "Search a Word",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              filled: true,
              fillColor: Colors.grey[100],
              prefixIcon: const Icon(Icons.search),
              // hintStyle: TextStyle(color: Colors.white),
            ),
          ),
          const Spacer(),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  cubit.getWOrdSearched();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    padding: const EdgeInsets.all(16)),
                child: const Text("SEARCH"),
              )),
        ],
      ),
    );
  }

getLoadingWidget(){
return const Center(child: CircularProgressIndicator());

}
getErrorWidget(message) {

return Center(child: Text(message));


}

  @override
  Widget build(BuildContext context) {

final cubit = context.watch<DictionaryCubit>();


    return BlocListener(

listener: (context, state) {

  if(state is WordSearchedState && state.words != null){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ListScreen(state.words),),);

  }
},
bloc: cubit,

      child: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: cubit.state is WordSearchingState
        ? getLoadingWidget()
        : cubit.state is ErrorState ?
        getErrorWidget("Some Error") : cubit.state is NoWordSearchedState ? 
        
        
        getDictionaryFormWidget(context) : Container()
      ),
    );
  }
}
