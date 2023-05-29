
# Dart Generic Classes Collection

This repository is a comprehensive collection of generic classes implemented in Dart.


## Installation

To use this collection in your project, follow these steps:

1. Clone this repository to your local machine:

    ```sh
    git clone https://github.com/thehelmsdeep/generics.git
    ```
2. Import the desired generic class in your Dart file:

    ```dart
    import 'package:generics/generics.dart';
    ```
## Usage

Each generic class serves a specific purpose. For example:

```dart
void executeLinkedList() {
  LinkedList<int> linkedList = LinkedList<int>();
  linkedList.insert(11);
  linkedList.insert(22);
  linkedList.insert(30);
  print('${linkedList.find(22)?.prev?.data ?? -1}');
}
```
