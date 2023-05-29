import 'package:generics/data_caching/index.dart';

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Convert Person instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
    };
  }

  // Convert Map to a Person instance
  static Person fromMap(Map<String, dynamic> map) {
    return Person(
      map['name'],
      map['age'],
    );
  }
}

void executeCachedData() {
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
}
