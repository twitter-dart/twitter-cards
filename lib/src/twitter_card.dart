// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

/// Set up a Twitter Summary Card based on the given arguments.
///
/// When this function is called, the HTML meta tags needed to configure
/// the Twitter Summary Card are safely inserted into the html of
/// the invoked web application.
///
/// It returns the [HeadElement] object after the meta tag has been inserted,
/// but this is for validation purposes.
///
/// ## Parameters
///
/// - [title]: A concise title for the related content.
///
/// - [site]: The Twitter @username the card should be attributed to.
///
/// - [description]: A description that concisely summarizes the content as
///                  appropriate for presentation within a Tweet. You should
///                  not re-use the title as the description or use this field
///                  to describe the general services provided by the website.
///
/// - [imageUrl]: A URL to a unique image representing the content of the page.
///               You should not use a generic image such as your website logo,
///               author photo, or other image that spans multiple pages.
///               Images for this Card support an aspect ratio of 1:1 with
///               minimum dimensions of 144x144 or maximum of 4096x4096 pixels.
///               Images must be less than 5MB in size. The image will be
///               cropped to a square on all platforms. JPG, PNG, WEBP and GIF
///               formats are supported. Only the first frame of an animated
///               GIF will be used. SVG is not supported.
///
/// - [imageAlt]: A text description of the image conveying the essential
///               nature of an image to users who are visually impaired.
///               Maximum 420 characters.
///
/// ## reference
///
/// - https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/summary
html.HeadElement setupSummaryCard({
  required String title,
  String? site,
  String? description,
  String? imageUrl,
  String? imageAlt,
}) =>
    _appendMetaElements(
      [
        _buildRequiredMetaElement('twitter:card', 'summary'),
        _buildRequiredMetaElement('twitter:title', title),
        _buildMetaElement('twitter:site', site),
        _buildMetaElement('twitter:description', description),
        _buildMetaElement('twitter:image', imageUrl),
        _buildMetaElement('twitter:image:alt', imageAlt)
      ],
    );

/// Returns the required meta element.
html.MetaElement? _buildRequiredMetaElement(
  final String name,
  final String? content,
) {
  if (content == null || content.isEmpty) {
    throw UnsupportedError('The content of [$name] is required.');
  }

  return html.MetaElement()
    ..name = name
    ..content = content;
}

/// Returns the meta element, or null if the content is null or empty.
html.MetaElement? _buildMetaElement(
  final String name,
  final String? content,
) {
  if (content == null || content.isEmpty) {
    return null;
  }

  return html.MetaElement()
    ..name = name
    ..content = content;
}

/// Append the meta elements to the head element if element is not null.
html.HeadElement _appendMetaElements(
  final List<html.MetaElement?> elements,
) {
  final head = html.document.head!;

  for (final element in elements) {
    if (element == null) {
      continue;
    }

    head.append(element);
  }

  return head;
}
