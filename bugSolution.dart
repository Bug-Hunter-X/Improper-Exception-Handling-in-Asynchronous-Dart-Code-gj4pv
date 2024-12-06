```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e, stacktrace) {
    print('Error fetching data: $e');
    print('Stacktrace: $stacktrace');
    rethrow; // Rethrow to handle the exception higher up
  }
}
```