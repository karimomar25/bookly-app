import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with Api Server");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with Api Server");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with Api Server");

      case DioExceptionType.cancel:
        return ServerFailure("request canceld");

      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Unknown Error");
      case DioExceptionType.badCertificate:
        return ServerFailure("Unknown Error");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.connectionError:
        return ServerFailure("Connection error with Api Server");
        
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("your request not found");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server error");
    } else {
      return ServerFailure("there was an error");
    }
  }
}

class InternetFailure extends Failure {
  InternetFailure(super.errMessage);
}
