import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.emailIsEmpty(failedValue: input));
  }
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(input);
  if (emailValid) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
  if (input.length > 5) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateLength(String input, int size) {
  if (input.isEmpty) {
    return left(ValueFailure.inputIsEmpty(failedValue: input));
  }
  if (input.length > size) {
    return right(input);
  } else {
    return left(ValueFailure.shortInputText(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateNumber(String input, int size) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
  if (input.length > size) {
    return right(input);
  } else {
    return left(ValueFailure.shortInputText(failedValue: input));
  }
}
