import 'package:dio/dio.dart';
import 'package:machinetest/model/model.dart'; // Replace with your model path

class ApiService {
  final Dio _dio = Dio();

  Future<Model?> fetchData() async {
    try {
      final String url = 'https://swan.alisonsnewdemo.online/api/home';

      final Map<String, dynamic> data = {
        'id': '27v',
        'token': 'aVyk0eogEZ8pB4tL7qUV2ASgk8dCtDY07dDezRvp'
      };

      // Making the API request using POST
      final response = await _dio.post(url, data: data);
      print(response.statusCode);

      if (response.statusCode == 200) {
        print(response.data);
        return Model.fromJson(response.data);
      } else {
        print('Failed to load data: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error fetching data: $e');
      return null;
    }
  }
}
