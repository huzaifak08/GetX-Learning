// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter APP'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Local Storage:

          // 1: Add Package get_storage
          // 2: Initialize in main.dart

          final box = GetStorage();

          // Single Value:
          box.write('key', 'value');
          box.read('key');

          debugPrint(box.read('key'));

          // List:
          final fruitsList = ['apple', 'banana', 'grapes'];

          box.write('fruits', fruitsList);
          box.read('fruits');

          // debugPrint(box.read('fruits'));

          // Object:
          Person person = Person(name: 'Huzaifa', age: 12);
          debugPrint(person.toString()); // Person(name: Huzaifa, age: 12)

          final jsonString = jsonEncode(
              person.toJson()); //  "{\"name\":\"Huzaifa\",\"age\":12}"

          debugPrint(jsonString);

          box.write('person', jsonString);
          box.read('person');

          // Listener: to observe changes in stored value

          box.listen(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ================> Person Class: <=========================

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(name: $name, age: $age)';

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
