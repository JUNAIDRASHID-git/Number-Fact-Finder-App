import "dart:convert";

import "package:http/http.dart" as http;
import "package:numberfactfinder/models/number_fact_response/number_fact_response.dart";

Future<NumberFactResponse> getNumberFact({required String number}) async {
  final response =
      await http.get(Uri.parse("http://numbersapi.com/$number/trivia?json"));
  final bodyAsJson = jsonDecode(response.body);
  return NumberFactResponse.fromJson(bodyAsJson);
}
