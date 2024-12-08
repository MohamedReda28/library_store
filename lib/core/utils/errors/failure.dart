
import 'package:dio/dio.dart';

abstract class Failure{
  String errorMessege;
  Failure(this.errorMessege);
}
class ServerFailure extends Failure{
  ServerFailure(super.errorMessege);

 factory ServerFailure.fromDioException(DioException dioException){


switch(dioException.type)
{
  
  case DioExceptionType.connectionTimeout:
 return ServerFailure('Connction time outTime with api');
  case DioExceptionType.sendTimeout:
    return ServerFailure('Send messege fail with api');
  case DioExceptionType.receiveTimeout:
       return ServerFailure('Receive messege fail with api');
  case DioExceptionType.badCertificate:
 return ServerFailure('Bad certificate received');
  case DioExceptionType.badResponse:
   return ServerFailure.fromResponse(
            dioException.response!.statusCode !, 
            dioException.response!.data);
  case DioExceptionType.cancel:
       return ServerFailure('the reust was cancelled ,please try again!');
  case DioExceptionType.connectionError:
       return ServerFailure('the internet connection fail,please try again!');
  case DioExceptionType.unknown:
       return ServerFailure('Unexpected error ,please try again!');
       default:
       return ServerFailure('Oops ther was an error ,please try again!');
}
 }
 factory ServerFailure.fromResponse(int satatusCode,Map<String,dynamic> responsData)
 {
  if(satatusCode==400||satatusCode==401||satatusCode==403)
  {
    return ServerFailure(responsData['error']['message']);
  }else if(satatusCode==404)
  {
    return ServerFailure('You requst not found,please try later!');
  }else if(satatusCode==500)
  {
    return ServerFailure('the Server has an error ,please try later!');
  }
  else {
    return ServerFailure('Unexpected error ,please try again!');
  }
 }
}