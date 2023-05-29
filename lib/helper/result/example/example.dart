import 'package:generics/helper/result/src/result.dart';

Result<int> divide(int a, int b) {
  if (b == 0) {
    return Failure("Can't divide by zero");
  } else {
    return Success(a ~/ b);
  }
}

void executeResult() {
  var result = divide(10, 5);

  if (result is Success<int>) {
    print('Success: ${result.value}');
  }

  if (result is Failure<int>) {
    print('Failure: ${result.message}');
  }
}

