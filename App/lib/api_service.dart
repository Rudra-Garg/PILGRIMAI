import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

Future<String> getResponse(String message) async {
  const url = 'https://pilgrimai.live/chat';

  // Retrieve SID or handle initial retrieval if necessary
  String sid = await retrieveOrStoreSid();

  // Construct request body and headers
  final body = jsonEncode({
    'message': message,
    'SID': sid,
  });

  final headers = {'Content-Type': 'application/json'};

  // Make the POST request using http.post
  try {
    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      return response.body; // Return successful response
    } else {
      throw Exception('Failed to fetch data: ${response.statusCode}'); // Handle failures
    }
  } catch (error) {
    throw Exception('Error making HTTP request: $error'); // Handle general errors
  }
}

Future<String> retrieveOrStoreSid() async {
  final prefs = await SharedPreferences.getInstance();
  String? storedSid = prefs.getString('sid');

  if (storedSid == null) {
    // Fetch and store SID if not found
    storedSid = await _fetchSid(); // Replace with your SID fetching logic
    await prefs.setString('sid', storedSid!);
  }

  return storedSid;
}

Future<String> _fetchSid() async {
  const sidUrl = 'https://pilgrimai.live/SID';
  const sidMethod = 'GET';

  try {
    final response = await http.get(Uri.parse(sidUrl));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final sid = jsonResponse; // Extract SID from response
      return sid; // Return the extracted SID
    } else {
      throw Exception('Failed to fetch SID: ${response.statusCode}'); // Handle errors
    }
  } catch (error) {
    throw Exception('Error making API call for SID: $error'); // Handle general errors
  }
}
