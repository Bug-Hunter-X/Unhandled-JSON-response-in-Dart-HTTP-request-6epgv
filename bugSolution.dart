```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if jsonData is a list and not empty
      if (jsonData is List && jsonData.isNotEmpty) {
        final firstItem = jsonData[0];
        // ... further processing of firstItem ...
      } else {
        print('Unexpected JSON response format or empty response.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Handle the error appropriately
  }
}
```