part of '../design.dart';

class FontsFoundation {
  static TextTheme get textTheme => const TextTheme(
        bodyLarge: FontsToken.h1,
        bodyMedium: FontsToken.h2,
        titleMedium: FontsToken.h3,
        titleSmall: FontsToken.h4,
        displayLarge: FontsToken.bodyLg,
        displayMedium: FontsToken.body,
        displaySmall: FontsToken.bodySm,
        headlineMedium: FontsToken.bodyXs,
      );

  static TextTheme get lightTextTheme => TextTheme(
        bodyLarge: FontsToken.h1.copyWith(color: ColorsFoundation.tertiary),
        bodyMedium: FontsToken.h2.copyWith(color: ColorsFoundation.tertiary),
        titleMedium: FontsToken.h3.copyWith(color: ColorsFoundation.tertiary),
        titleSmall: FontsToken.h4.copyWith(color: ColorsFoundation.tertiary),
        displayLarge:
            FontsToken.bodyLg.copyWith(color: ColorsFoundation.tertiary),
        displayMedium:
            FontsToken.body.copyWith(color: ColorsFoundation.tertiary),
        displaySmall:
            FontsToken.bodySm.copyWith(color: ColorsFoundation.tertiary),
        headlineMedium:
            FontsToken.bodyXs.copyWith(color: ColorsFoundation.tertiary),
      );

  static TextTheme get darkTextTheme => TextTheme(
        bodyLarge: FontsToken.h1.copyWith(color: ColorsFoundation.quaternary),
        bodyMedium: FontsToken.h2.copyWith(color: ColorsFoundation.quaternary),
        titleMedium: FontsToken.h3.copyWith(color: ColorsFoundation.quaternary),
        titleSmall: FontsToken.h4.copyWith(color: ColorsFoundation.quaternary),
        displayLarge:
            FontsToken.bodyLg.copyWith(color: ColorsFoundation.quaternary),
        displayMedium:
            FontsToken.body.copyWith(color: ColorsFoundation.quaternary),
        displaySmall:
            FontsToken.bodySm.copyWith(color: ColorsFoundation.quaternary),
        headlineMedium:
            FontsToken.bodyXs.copyWith(color: ColorsFoundation.quaternary),
      );

  static TextTheme get primateTextTheme => TextTheme(
        bodyLarge: FontsToken.h1.copyWith(color: ColorsFoundation.primary),
        bodyMedium: FontsToken.h2.copyWith(color: ColorsFoundation.primary),
        titleMedium: FontsToken.h3.copyWith(color: ColorsFoundation.primary),
        titleSmall: FontsToken.h4.copyWith(color: ColorsFoundation.primary),
        displayLarge:
            FontsToken.bodyLg.copyWith(color: ColorsFoundation.primary),
        displayMedium:
            FontsToken.body.copyWith(color: ColorsFoundation.primary),
        displaySmall:
            FontsToken.bodySm.copyWith(color: ColorsFoundation.primary),
        headlineMedium:
            FontsToken.bodyXs.copyWith(color: ColorsFoundation.primary),
      );
}
