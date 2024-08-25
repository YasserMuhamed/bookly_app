import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  // ignore: deprecated_member_use
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: "send timeout with ApiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: "Receive timeout with ApiServer");

      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: "badCertificate with ApiServer");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Request to ApiServer was canceled");

      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: "there is internet connection Error");
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: "Oops There Was An Error ,Please Try Later");

      default:
        return ServerFailure(
            errMessage: "Oops There Was An Error ,Please Try Later");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: "Your Request Not Found 404, Please Try Later");
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: "Internal Server Error, Please Try Later");
    } else {
      return ServerFailure(
          errMessage: "Oops There Was An Error ,Please Try Later");
    }
  }
}
