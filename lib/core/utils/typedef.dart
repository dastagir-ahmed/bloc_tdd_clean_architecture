import 'package:dartz/dartz.dart';

import '../../src/authentication/domain/entities/user.dart';
import '../errors/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef ResultVoid = ResultFuture<void>;
