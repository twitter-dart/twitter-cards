// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore_for_file: avoid_web_libraries_in_flutter

// Dart imports:
import 'dart:html';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:twitter_cards/src/twitter_card.dart';

void main() {
  group('.setupSummaryCard', () {
    test('with required parameter', () {
      setupSummaryCard(title: 'Flutter!');
      final children = document.head!.children;

      expect(
        children[children.length - 2].getAttribute('name'),
        'twitter:card',
      );
      expect(
        children[children.length - 2].getAttribute('content'),
        'summary',
      );
      expect(
        children[children.length - 1].getAttribute('name'),
        'twitter:title',
      );
      expect(
        children[children.length - 1].getAttribute('content'),
        'Flutter!',
      );
    });
  });
}
