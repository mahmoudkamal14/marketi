import 'package:dio/dio.dart';
import 'package:marketi/core/networking/api_constants.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/auth/data/models/login_request_body.dart';
import 'package:marketi/features/auth/data/models/register_request_body.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_auth_datasource.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class RemoteAuthDatasource {
  factory RemoteAuthDatasource(Dio dio, {String baseUrl}) =
      _RemoteAuthDatasource;

  @POST(ApiConstants.login)
  Future<AuthResponseModel> loginWithEmailPassword(
      @Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.register)
  Future<AuthResponseModel> registerWithEmailPassword(
      @Body() RegisterRequestBody registerRequestBody);
}
