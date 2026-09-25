import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout');
      // case of the response
      case DioExceptionType.badResponse:
        return ServerFailure('Bad Response');
      case DioExceptionType.cancel:
        return ServerFailure('Cancel');
      case DioExceptionType.unknown:
        return ServerFailure('Unknown');
      default:
        return ServerFailure('Something went wrong');
    }
  }

  // factory from response
  factory ServerFailure.fromresponse(int statusCode, dynamic response) {
    if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 403 ||
        statusCode == 500 ||
        statusCode == 503) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('your request not found ');
    } else {
      return ServerFailure('Something went wrong');
    }
  }
}
