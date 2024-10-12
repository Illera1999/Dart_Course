import 'package:http/http.dart' as http;
import 'package:paquetes/clases/pais.dart';

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

void getReqRespServideCountry() {
  final url = 'https://restcountries.com/v3.1/alpha/col';
  final uri = Uri.parse(url);
  http.get(uri).then((res) {
    final reqResponse = paisFromJson(res.body);
    print('===========================');
    print('Pais: ${reqResponse.name}');
    print('Población: ${reqResponse.population}');
    print('Fronteras: ${reqResponse.borders}');
    print('Lenguaje: ${reqResponse.languages?.spa ?? 'No se encuentra'}');
    print('Latitud: ${reqResponse.latlng?[0] ?? 'No se encuentra'}');
    print('Longitud: ${reqResponse.latlng?[1] ?? 'No se encuentra'}');
    print('Moneda: ${reqResponse.currencies?.cop?.symbol ?? 'No se encuentra'}');
    print('Flag: ${reqResponse.flags?.svg}');
    print('===========================');

  });
}