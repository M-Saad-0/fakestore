class Result<T, F> {
  final T? success;
  final F? failure;

  Result({this.success, this.failure});
  factory Result.failed(F? reason) {
    return Result(failure: reason);
  }
  factory Result.succeed(T? value) {
    return Result(success: value);
  }

  bool get isFailed => failure != null;
  bool get isSuccess => success != null;
}
