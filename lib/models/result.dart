class Result<T, F> {
  final T? value;
  final F? failure;

  Result({this.value, this.failure});
  factory Result.failed(F? reason) {
    return Result(failure: reason);
  }
  factory Result.succeed(T? value) {
    return Result(value: value);
  }

  bool get isFailed => failure != null;
  bool get isSuccess => value != null;
}
