```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final jsonData = jsonDecode(response.body);
      // This line is problematic if jsonData is not a list
      final firstItem = jsonData[0];  
      // ... further processing of firstItem ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Handle the error appropriately
  }
}
```