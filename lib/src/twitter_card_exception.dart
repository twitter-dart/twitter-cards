// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

class TwitterCardException implements Exception {
  /// Returns the new instance of [TwitterCardException].
  const TwitterCardException(this.message);

  /// The error message
  final String message;

  @override
  String toString() => 'TwitterCardException: $message';
}
