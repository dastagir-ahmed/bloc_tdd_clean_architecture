import 'package:bloc_tdd/core/utils/typedef.dart';

abstract class UsecaseWithParams<Type, Params>{
  const UsecaseWithParams();
  ResultFuture<Type> call(Params params);
}

abstract class UsecaseWithoutParams<Type>{
  UsecaseWithoutParams();
  ResultFuture<Type> call();
}