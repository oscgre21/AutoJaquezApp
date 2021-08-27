import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validator.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }
  const EmailAddress._(this.value) : assert(value != null);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }
  const Password._(this.value) : assert(value != null);
}
