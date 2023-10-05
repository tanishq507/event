import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Event.dart';

Future<List<Event>> fetchEventData() async {
  final apiUrl = 'https://retoolapi.dev/71Zfr8/data';

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    return data.map((json) => Event.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}
