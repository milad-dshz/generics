
# Dart Generic Classes Collection

This repository is a comprehensive collection of generic classes implemented in Dart.


## Installation

To use this collection in your Dart project, follow these steps:

1. Clone this repository to your local machine:

    ```sh
    git clone https://github.com/thehelmsdeep/generics.git
    ```
2. Import the desired generic class in your Dart file:

    ```dart
    import 'package:generics/generics.dart' as generics;
    ```
## Usage

Each generic class serves a specific purpose. For example:

```dart
// Instantiate a Cache for Person
  final Cache<Person> personCache = Cache();

  // Create some Person objects
  Person person1 = Person('John Doe', 30);
  Person person2 = Person('Jane Doe', 25);

  // Set some values
  personCache.set('person1', person1);
  personCache.set('person2', person2);

  // Get and print a value
  print(
      personCache.get('person1')?.toMap()); // prints {name: John Doe, age: 30}

  // Get and print all keys
  print(personCache.getKeys()); // prints ['person1', 'person2']

  // Remove a value
  personCache.remove('person2');

  // Clear the cache
  personCache.clear();

```
