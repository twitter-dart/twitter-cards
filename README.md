<p align="center">
  <a href="https://github.com/twitter-dart/twitter-cards">
    <img alt="twitter_cards" width="500px" src="https://user-images.githubusercontent.com/13072231/182980602-1655aecf-8349-4108-a397-69094656a81b.png">
  </a>
</p>

<p align="center">
  <b>The Easiest Way to Integrate Twitter Cards into Your Flutter Web App 🐦</b>
</p>

---

[![GitHub Sponsor](https://img.shields.io/static/v1?label=Sponsor&message=%E2%9D%A4&logo=GitHub&color=ff69b4)](https://github.com/sponsors/myConsciousness)
[![GitHub Sponsor](https://img.shields.io/static/v1?label=Maintainer&message=myConsciousness&logo=GitHub&color=00acee)](https://github.com/myConsciousness)

[![pub package](https://img.shields.io/pub/v/twitter_cards.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/twitter_cards)
[![Dart SDK Version](https://badgen.net/pub/sdk-version/twitter_cards)](https://pub.dev/packages/twitter_cards/)
[![Test](https://github.com/twitter-dart/twitter-cards/actions/workflows/test.yml/badge.svg)](https://github.com/twitter-dart/twitter-cards/actions/workflows/test.yml)
[![Analyzer](https://github.com/twitter-dart/twitter-cards/actions/workflows/analyzer.yml/badge.svg)](https://github.com/twitter-dart/twitter-cards/actions/workflows/analyzer.yml)
[![Issues](https://img.shields.io/github/issues/twitter-dart/twitter-cards?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-cards/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/twitter-dart/twitter-cards?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-cards/pulls)
[![Stars](https://img.shields.io/github/stars/twitter-dart/twitter-cards?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-cards)
[![Contributors](https://img.shields.io/github/contributors/twitter-dart/twitter-cards)](https://github.com/twitter-dart/twitter-cards/graphs/contributors)
[![Code size](https://img.shields.io/github/languages/code-size/twitter-dart/twitter-cards?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-cards)
[![Last Commits](https://img.shields.io/github/last-commit/twitter-dart/twitter-cards?logo=git&logoColor=white)](https://github.com/twitter-dart/twitter-cards/commits/main)
[![License](https://img.shields.io/github/license/twitter-dart/twitter-cards?logo=open-source-initiative&logoColor=green)](https://github.com/twitter-dart/twitter-cards/blob/main/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](https://github.com/twitter-dart/twitter-cards/blob/main/CODE_OF_CONDUCT.md)

---

<!-- TOC -->

- [1. Guide 🌎](#1-guide-)
  - [1.1. Features 💎](#11-features-)
  - [1.2. Getting Started ⚡](#12-getting-started-)
    - [1.2.1. Install Library](#121-install-library)
    - [1.2.2. Import](#122-import)
    - [1.2.3. Implementation](#123-implementation)
  - [1.3. Supported Cards 👀](#13-supported-cards-)
    - [1.3.1. Summary Card](#131-summary-card)
      - [1.3.1.1. Method](#1311-method)
      - [1.3.1.2. Parameters](#1312-parameters)
      - [1.3.1.3. Example](#1313-example)
  - [1.4. Contribution 🏆](#14-contribution-)
  - [1.5. Related Contents 📢](#15-related-contents-)
  - [1.6. License 🔑](#16-license-)
  - [1.7. More Information 🧐](#17-more-information-)

<!-- /TOC -->

# 1. Guide 🌎

This library provides the easiest way to integrate [Twitter Cards](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/abouts-cards) into your Flutter Web app.

**No HTML knowledge is required** to set up [Twitter Cards](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/abouts-cards) with this library.
This library safely and flawlessly sets up [Twitter Cards](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/abouts-cards) in your Flutter web apps without having to write HTML directly.

**Show some ❤️ and star the repo to support the project.**

## 1.1. Features 💎

✅ Works with **Flutter Web**. </br>
✅ **No HTML knowledge required**. </br>
✅ **Settings can be changed dynamically at app runtime**. </br>
✅ **Well documented** and **well tested**. </br>

## 1.2. Getting Started ⚡

### 1.2.1. Install Library

**With Flutter:**

```bash
 flutter pub add twitter_cards
```

> **Note** </br>
> [Twitter Cards](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/abouts-cards) can be applied to HTML-based web content.

### 1.2.2. Import

```dart
import 'package:twitter_cards/twitter_cards';
```

### 1.2.3. Implementation

Implementation using this library is very simple, just call the method corresponding to each Twitter Card.

For example, if you want to set up [Summary Card](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/summary) on any page, you can write so as follows.

```dart
import 'package:twitter_cards/twitter_cards';

void main() {
  setupSummaryCard(
    title: 'Small Island Developing States Photo Submission',
    site: '@flickr',
    description: 'View the album on Flickr.',
    imageUrl: 'https://farm6.staticflickr.com/5510/14338202952_93595258ff_z.jpg',
  );
}
```

## 1.3. Supported Cards 👀

### 1.3.1. Summary Card

The **[Summary Card](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/summary)** can be used for many kinds of web content, from blog posts and news articles, to products and restaurants.
It is designed to give the reader a preview of the content before clicking through to your website.

- [Official Reference](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/summary)

#### 1.3.1.1. Method

| Method                                                                                                     |
| ---------------------------------------------------------------------------------------------------------- |
| [setupSummaryCard](https://pub.dev/documentation/twitter_cards/latest/twitter_cards/setupSummaryCard.html) |

#### 1.3.1.2. Parameters

| Parameter   | Required | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ----------- | :------: | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| title       |    ✅     | A concise title for the related content.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| site        |    ❌     | The Twitter @username the card should be attributed to.                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| description |    ❌     | A description that concisely summarizes the content as appropriate for presentation within a Tweet. You should not re-use the title as the description or use this field to describe the general services provided by the website.                                                                                                                                                                                                                                                                                                 |
| imageUrl    |    ❌     | A URL to a unique image representing the content of the page. You should not use a generic image such as your website logo, author photo, or other image that spans multiple pages. Images for this Card support an aspect ratio of 1:1 with minimum dimensions of 144x144 or maximum of 4096x4096 pixels. Images must be less than 5MB in size. The image will be cropped to a square on all platforms. JPG, PNG, WEBP and GIF formats are supported. Only the first frame of an animated GIF will be used. SVG is not supported. |
| imageAlt    |    ❌     | A text description of the image conveying the essential nature of an image to users who are visually impaired. Maximum 420 characters.                                                                                                                                                                                                                                                                                                                                                                                             |

#### 1.3.1.3. Example

```dart
setupSummaryCard(
  title: 'Small Island Developing States Photo Submission',
  site: '@flickr',
  description: 'View the album on Flickr.',
  imageUrl: 'https://farm6.staticflickr.com/5510/14338202952_93595258ff_z.jpg',
);
```

## 1.4. Contribution 🏆

If you would like to contribute to **twitter_cards**, please create an [issue](https://github.com/twitter-dart/twitter-cards/issues) or create a Pull Request.

There are many ways to contribute to the OSS. For example, the following subjects can be considered:

- There are request parameters or response fields that are not implemented.
- Documentation is outdated or incomplete.
- Have a better way or idea to achieve the functionality.
- etc...

You can see more details from resources below:

- [Contributor Covenant Code of Conduct](https://github.com/twitter-dart/twitter-cards/blob/main/CODE_OF_CONDUCT.md)
- [Contribution Guidelines](https://github.com/twitter-dart/twitter-cards/blob/main/CONTRIBUTING.md)
- [Style Guide](https://github.com/twitter-dart/twitter-cards/blob/main/STYLEGUIDE.md)

Or you can create a [discussion](https://github.com/twitter-dart/twitter-cards/discussions) if you like.

**Feel free to join this development, diverse opinions make software better!**

## 1.5. Related Contents 📢

We also provide the following libraries related to Twitter!

- **twitter_api_v2**: The easiest way to using [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction) with Dart and Flutter. Strong support for all [v2.0 endpoints](https://developer.twitter.com/en/docs/api-reference-index).
  - [GitHub](https://github.com/twitter-dart/twitter-api-v2)
  - [Pub.dev](https://pub.dev/packages/twitter_api_v2)
- **twitter_oauth2_pkce**: This is the easiest way to obtain a Twitter access token using the [OAuth 2.0 PKCE](https://developer.twitter.com/en/docs/authentication/oauth-2-0/authorization-code) method.
  - [GitHub](https://github.com/twitter-dart/twitter-oauth2-pkce)
  - [Pub.dev](https://pub.dev/packages/twitter_oauth2_pkce)

## 1.6. License 🔑

All resources of **twitter_cards** is provided under the `BSD-3` license.

```license
Copyright 2022 Kato Shinya. All rights reserved.
Redistribution and use in source and binary forms, with or without
modification, are permitted provided the conditions.
```

> **Note**</br>
> License notices in the source are strictly validated based on `.github/header-checker-lint.yml`. Please check [header-checker-lint.yml](https://github.com/twitter-dart/twitter-cards/tree/main/.github/header-checker-lint.yml) for the permitted standards.

## 1.7. More Information 🧐

**twitter_cards** was designed and implemented by **_Kato Shinya ([@myConsciousness](https://github.com/myConsciousness))_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/twitter-dart/twitter-cards/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/twitter_cards/latest/twitter_cards/twitter_cards-library.html)
- [Release Note](https://github.com/twitter-dart/twitter-cards/releases)
- [Bug Report](https://github.com/twitter-dart/twitter-cards/issues)
