import 'dart:typed_data';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';

final geminiProvider = Provider<GeminiApi>((ref) => GeminiApi());

class GeminiApi {
  final gemini = Gemini.instance;
  final Logger _logger = Logger();

  Future<String> proVisionModel({required XFile image, required String prompt}) async {
    try {
      Uint8List bytes = await image.readAsBytes();
      final geminiResponse = await gemini.textAndImage(
        text: prompt,
        images: [bytes],
      );
      return geminiResponse?.content?.parts?.last.text ?? '';
    } catch (e) {
      _logger.e('textAndImageInput $e');
      return ''; // or handle the error accordingly
    }
  }

  Future<String> proModel({required String prompt}) async {
    try {
      final geminiResponse = await gemini.text(
         prompt,
      );
      return geminiResponse?.output ?? '';
    } catch (e) {
      _logger.e('textInput $e');
      return ''; // or handle the error accordingly
    }
  }
}
