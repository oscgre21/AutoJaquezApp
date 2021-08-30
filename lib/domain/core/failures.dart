import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.emailIsEmpty({
    required T failedValue,
  }) = EmailIsEmpty<T>;
  const factory ValueFailure.passwordIsEmpty({
    required T failedValue,
  }) = PasswordIsEmpty<T>;
  const factory ValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) = InvalidPhoneNumber<T>;
  const factory ValueFailure.shortInputText({
    required T failedValue,
  }) = ShortInputText<T>;
  const factory ValueFailure.inputIsEmpty({
    required T failedValue,
  }) = InputIsEmpty<T>;
}
