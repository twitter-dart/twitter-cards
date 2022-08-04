// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_card/twitter_card.dart';

void main() {
  group('.setupSummaryCard', () {
    test('should return a HeadElement', () {
      final head = setupSummaryCard(title: 'Flutter!');
      final children = head.children;

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