import 'dart:convert';

import 'package:movie/common/import_files.dart';

class APIClient {
  final Client client;
  APIClient({
    required this.client,
  });

  dynamic get(String path) async {
    Uri url =
        Uri.parse('${APIConstant.baseUrl}$path?api_key=${APIConstant.apiKey}');
    final response =
        await client.get(url, headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
