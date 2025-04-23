import 'image_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImageCubit extends Cubit<ImageStates> {
  ImageCubit() : super(EmptyList());
  List<XFile> images = [];

  // to choose images from gallery
  pickImages() async {
    final ImagePicker imagePicker = ImagePicker();
    final List<XFile> chosenImages = await imagePicker.pickMultiImage();
    images = chosenImages;
    emit(images.isEmpty ? EmptyList() : FoundImages());
  }

  // to reinitialize the list
  reInitializeImageList() {
    images.clear();
    emit(EmptyList());
  }
}
