import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static final String baseUrl = dotenv.get('BASE_URL');
  static final String baseImageUrl = dotenv.get('BASE_IMAGE_URL');
  static final String apiKey = dotenv.get('API_KEY');
}
