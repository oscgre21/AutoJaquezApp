import 'errors.dart';
import 'package:flutter/foundation.dart';

import 'failures.dart';
import 'package:dartz/dartz.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;

  const ValueObject();

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  bool operator ==(Object o) {
    if (identical(this, 0)) return true;
    return o is ValueObject<T> && o.value == value;
  }
}
