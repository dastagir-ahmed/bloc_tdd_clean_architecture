//this is our interface
import 'package:bloc_tdd/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/utils/typedef.dart';
import '../entities/user.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultVoid createUser({
    required String name,
    required String avatar,
    required String createdAt,
  });

  ResultFuture<List<User>> getUser();
}
