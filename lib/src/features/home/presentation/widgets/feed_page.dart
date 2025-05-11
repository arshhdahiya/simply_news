import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:simply_news/src/widgets/molecules/s_themed_text.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Hero Section (Image with Blur and Headline)
        Stack(
          children: [
            // Blurred Background Image extending to edges
            Positioned.fill(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                child: Image.asset(
                  "assets/images/temp.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Foreground Image with a subtle gradient
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Stack(
                children: [
                  // Main News Image with Rounded Corners and Padding
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/images/temp.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.35,
                      ),
                    ),
                  ),

                  // Dark Gradient Overlay for better text visibility
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // Timing Tags and Headline
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              Icon(Icons.access_time, color: Colors.grey, size: 16),
              const SizedBox(width: 5),
              SThemedText("2 hours ago • 4 min read", theme: STextTheme.twelveNormalBlue),
            ],
          ),
        ),

        // Headline
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SThemedText(
            "UN Climate Summit: World Leaders Call for Urgent Action",
            theme: STextTheme.sixteenBoldBlue,
          ),
        ),

        // News Summary Section
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            padding: const EdgeInsets.all(12),
            child: SThemedText(
              "World leaders gathered in New York for the UN Climate Summit to discuss urgent solutions to the climate crisis. Experts warned that rising global temperatures are threatening ecosystems and human livelihoods. The summit saw pledges from multiple countries to reduce carbon emissions and invest in renewable energy.",
              theme: STextTheme.twelveNormalBlack,
            ),
          ),
        ),
      ],
    );
  }
}