import 'package:http/http.dart' as http;

import 'package:paquetes/clases/reqres_respuesta.dart';

void getReqRespServide() {
  final url = 'https://reqres.in/api/users?page=2';
  final uri = Uri.parse(url);
  http.get(uri).then((res) {
    // print(res);
    // final body = jsonDecode(res.body);
    // print(body);
    // print('Page: ${body['page']}');
    // print('per_page: ${body['per_page']}');
    // print('id del tercer elemento: ${body['data'][2]['id']}');

    final reqResponse = reqResponseFromJson(res.body);
    print('Page: ${reqResponse.page}');
    print('per_page: ${reqResponse.perPage}');
    print('id del tercer elemento: ${reqResponse.data[2].id}');
  });
}