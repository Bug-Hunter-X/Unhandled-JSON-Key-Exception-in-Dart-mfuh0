```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      //Check if the key exists before accessing it
      final value = jsonData.containsKey('nonExistentKey') ? jsonData['nonExistentKey'] : null; 
      print(value); 
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately, e.g., show an error message to the user
  }
}
```