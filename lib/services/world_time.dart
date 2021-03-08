import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {

  String location; // Location name for the UI
  String time; // Time for that location
  String flag; // URL to flag icon
  String url; // Location URL for API endpoints

  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {

    try {
      final response = await http.get(Uri.https('worldtimeapi.org', 'api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // Set time property
      time = now.toString();
    } catch (e) {
      print('Caught error: $e');
      time = 'Could not get time';
    }
  }
}
