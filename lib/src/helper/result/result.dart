// This is the abstract base class
abstract class Result<T> {
  const Result();
}

// Subclass for success case
class Success<T> extends Result<T> {
  final T value;

  Success(this.value);
}

// Subclass for failure case
class Failure<T> extends Result<T> {
  final String message;

  Failure(this.message);
}
