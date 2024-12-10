import 'package:chatbot_app/core/utils/my_strings.dart';
import 'package:chatbot_app/features/home/presentation/managers/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());
  List<String?> lst = [];

  addMessages({required String message}) {
    emit(HomeLoadingState());
    lst.add(message);
    emit(HomeSuccessState());
  }

  Future<String?> sendRequest({required String message}) async {
    emit(HomeLoadingState());
    try {
      final model =
          GenerativeModel(model: 'gemini-1.5-flash', apiKey: MyStrings.apiKey);
      final content = [Content.text(message)];
      final response = await model.generateContent(content);
      emit(HomeSuccessState());
      lst.add(response.text);
      return response.text;
    } catch (e) {
      emit(HomeFailureState());
      return e.toString();
    }
  }
}
