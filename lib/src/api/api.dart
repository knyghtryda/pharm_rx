import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/pharmacy_details.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://api-qa-demo.nimbleandsimple.com/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/pharmacies/info/{id}")
  Future<PharmacyDetailsResponse> getPharmacyDetails(@Path('id') String pharmacyId);
}
