import 'package:autojaquezapp/domain/core/value_validator.dart';

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

class PhoneNumber extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    assert(input != null);
    return PhoneNumber._(validateNumber(input, 9));
  }
  const PhoneNumber._(this.value) : assert(value != null);
}

class InputLength extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory InputLength(String input, int length) {
    assert(input != null);
    return InputLength._(validateLength(input, length));
  }
  const InputLength._(this.value) : assert(value != null);
}

class InputName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory InputName(String input) {
    assert(input != null);
    return InputName._(validateLength(input, 7));
  }
  const InputName._(this.value) : assert(value != null);
}
