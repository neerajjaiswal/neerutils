import 'package:http/http.dart' as http;

class NeerUtils {
  static Future<String> getPublicIP() async {

    try {
      const url = 'https://api.ipify.org';
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        // The response body is the IP in plain text, so just
        // return it as-is.
        return response.body;
      } else {
        return '';
      }
    } catch (e) {
      return '';
    }
  }

}


