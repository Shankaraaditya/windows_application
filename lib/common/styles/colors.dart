import 'package:flutter/material.dart';

extension CustomColors on Color {
  //body component Colors.
  static const Color customPurple = Color(0xFF7D23E0);
  static const Color voucherCard = Color(0xFF33363E);

  // application Text Colors.
  static const Color customWhiteShade1 = Color(0xFFF1F1F2);
  static const Color customWhiteShade2 = Color(0xFFAFB3BD); // 300+ brands

  // Offer Card gradient
  static const Gradient pinkGradient = LinearGradient(
    colors: [Color(0xFFE40037), Color(0xFFF41F52)],
  );
  static const Gradient redGradient = LinearGradient(
    colors: [Color(0xFF870000), Color(0xFF190A05)],
  );

  static const Gradient greenGradient =
      LinearGradient(colors: [Color(0xFF045848), Color(0xFF16AC6D)]);

  static const Gradient orangeGradient =
      LinearGradient(colors: [Color(0xFFC24600), Color(0xFFDA6422)]);

  static const Gradient blueGradient =
      LinearGradient(colors: [Color(0xFF3A1EBE), Color(0xFF6752CB)]);

  static const Gradient brownGradient =
      LinearGradient(colors: [Color(0xFF9A6E19), Color(0xFFB99A5E)]);

  static const Gradient darkRedGradient =
      LinearGradient(colors: [Color(0xFFED3221), Color(0xFFF05E22)]);

  static const Gradient violetGradient =
      LinearGradient(colors: [Color(0xFF6441A5), Color(0xFF2A0845)]);

  static const Gradient lightBlueGradient =
      LinearGradient(colors: [Color(0xFF2D4BBE), Color(0xFF457FE2)]);

  static const Gradient lightGreenGradient =
      LinearGradient(colors: [Color(0xFF4F660C), Color(0xFF9BC133)]);

  static const Gradient lightVioletGradient =
      LinearGradient(colors: [Color(0xFF60009A), Color(0xFF9017DA)]);
      static const Gradient lightVioletGradientSecondary =
      LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFFCAF8), Color(0xFFF5AFEB)]);

  static const Gradient cyanGradient =
      LinearGradient(colors: [Color(0xFF136A8A), Color(0xFF267871)]);

    static const Gradient buttonGradient =
      LinearGradient(colors: [Color(0xFFFF512F), Color(0xFFDD2476)]);

  static const Color customGreen = Color(0xFF00FF00);
  static const Color customBlue = Color(0xFF0000FF);
  static const Color customYellow = Color(0xFFFFFF00);
  static const Color customCyan = Color(0xFF00FFFF);
  static const Color customMagenta = Color(0xFFFF00FF);
  static const Color semiTransparentBlue = Color(0x800000FF);
}
