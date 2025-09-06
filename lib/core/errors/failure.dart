import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with server");
      case DioExceptionType.badCertificate:
        return ServerFailure("Secure connection failed. Please try again.");
      case DioExceptionType.badResponse:
        return ServerFailure(dioException.message.toString());
      case DioExceptionType.cancel:
        return ServerFailure("Request to server canceled");
      case DioExceptionType.connectionError:
        return ServerFailure(
          "Connection error. Please check your internet connection and try again.",
        );
      case DioExceptionType.unknown:
        return ServerFailure(
          "An unknown error occurred: ${dioException.message}",
        );
    }
  }
}
