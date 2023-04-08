import 'package:flutter/material.dart';

MaterialColor createMaterialColor(Color color) {
  // This function takes a Color object and returns a MaterialColor object
  // that is derived from the input color.

  List strengths = <double>[.05]; // A list of strengths for the color swatch
  final swatch = <int, Color>{}; // A map of color shades for the swatch
  final int r = color.red,
      g = color.green,
      b = color.blue; // The red, green, and blue components of the input color

  // Create a list of strengths for the color swatch
  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  // Loop through the strengths and create a color shade for each one
  strengths.forEach((strength) {
    final double ds =
        0.5 - strength; // Calculate the strength value for this shade
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      // Add the shade to the swatch map
      r +
          ((ds < 0 ? r : (255 - r)) * ds)
              .round(), // Calculate the red component of the shade
      g +
          ((ds < 0 ? g : (255 - g)) * ds)
              .round(), // Calculate the green component of the shade
      b +
          ((ds < 0 ? b : (255 - b)) * ds)
              .round(), // Calculate the blue component of the shade
      1, // Set the opacity of the shade to 1 (fully opaque)
    );
  });

  return MaterialColor(color.value, swatch); // Return the MaterialColor object
}
