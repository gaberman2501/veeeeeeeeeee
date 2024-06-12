import 'dart:convert';
import 'package:http/http.dart' as http;

class SocialBladeService {
  final String apiKey;

  SocialBladeService(this.apiKey);

  Future<Map<String, dynamic>> getUserData(String username) async {
    final url = Uri.parse('https://api.socialblade.com/v2/youtube/user/$username');
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load user data');
    }
  }
}
