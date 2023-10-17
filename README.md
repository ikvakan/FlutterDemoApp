# TumblrFlutterDemo

A sample app that utilizes [BLoC](https://bloclibrary.dev/#/) pattern and Clean Architecture to display and save posts to the local database.

## Setup
* To run the project use this command in the terminal: `flutter run -t lib/main.dart`     
  
`Make sure to check the pubspec.yaml files for more details on library versions.`

## Architecture
* [BLoC/Clean Architecture](https://bloclibrary.dev/#/)
* [Cubit](https://pub.dev/packages/flutter_bloc) State Management
* [Freezed](https://pub.dev/packages/freezed)
* [Future](https://dart.dev/language/concurrency) - handles async/await tasks 

## Dependency management
* [GetIt](https://pub.dev/packages/get_it)
* [Injectable](https://pub.dev/packages/injectable)

## Network
* [Dio](https://pub.dev/packages/dio) - HTTP RESTful connections
* [JsonSerializable](https://pub.dev/packages/json_serializable) - code generation library for serializing and deserializing JSON data

## Persistence
* [Isar](https://pub.dev/packages/isar) - Super Fast Cross-Platform Database for Flutter
  
## Other
### Logging
* [Logger](https://pub.dev/packages/logger)
### Code quality
* [Strict](https://pub.dev/packages/strict) - Static code analysis for Dart



## Disclaimer:
```PERSONAL PROJECT - NOT INTENDED FOR COMMERCIAL USE```



