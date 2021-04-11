import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class WorldTime{
  String time;
  String location;
  String url;
  String flag;
  bool isDaytime;
  WorldTime({this.url, this.location,this.flag});

  Future<void> getTime() async{
    http.Response response = await http.get(Uri.https('worldtimeapi.org','/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    print(data);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    isDaytime = now.hour > 6 && now.hour < 19 ? true : false;
    time = DateFormat.jm().format(now);

  }
}