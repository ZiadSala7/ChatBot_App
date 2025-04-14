import 'dart:typed_data';
import 'package:chatbot_app/core/utils/my_strings.dart';
import 'package:chatbot_app/features/home/presentation/managers/chat_cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:image_picker/image_picker.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());
  List<String?> lst = [];
// send text and images
//================================================================================================
  Future<String?> sendTextAndImageRequest({required String message}) async {
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

  // send text only
  //================================================================================================
  Future<String?> sendTextRequestOnly(
      {required String message, required List<XFile> imagesList}) async {
    emit(HomeLoadingState());
    try {
      final model =
          GenerativeModel(model: 'gemini-1.5-flash', apiKey: MyStrings.apiKey);
      final images = imagesList
          .map(
            (image) => image.readAsBytes(),
          )
          .toList(growable: false);

      final imagesBytes = await Future.wait(images);

      final imagesParts = imagesBytes
          .map((bytes) => DataPart('image/jpeg', Uint8List.fromList(bytes)))
          .toList();
      final prompt = TextPart(message);
      final content = [
        Content.multi([prompt, ...imagesParts])
      ];
      final response = await model.generateContent(content);
      emit(HomeSuccessState());
      lst.add(response.text);
      return response.text;
    } catch (e) {
      emit(HomeFailureState());
      return e.toString();
    }
  }
  //================================================================================================
}
