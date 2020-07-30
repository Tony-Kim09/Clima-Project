import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    //Attempt to reach the desired url using http.Response
    //then decode the json string from the data retrieved from the url request
    if (response.statusCode == 200) {
      String data = response.body;
      print('connected successfully');
      return jsonDecode(data);
    } else {
      print(response.statusCode);
      print('error is found');
    }
  }
}
