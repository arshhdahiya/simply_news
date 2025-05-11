import 'package:flutter/material.dart';
import 'package:simply_news/src/features/home/presentation/widgets/feed_page.dart';
import 'package:simply_news/src/styles/color_constants.dart';
import 'package:simply_news/src/widgets/molecules/s_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SScaffold(
        layout: ScaffoldLayout.standard,
        children: [
          Container(
            color: Colors.black,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: ColorConstants.primaryColor,
              unselectedLabelColor: Colors.white,
              indicatorColor: ColorConstants.primaryColor,
              isScrollable: true,
              physics: BouncingScrollPhysics(),
              tabs: [
                Tab(text: "My Feed"),
                Tab(text: "Champions Trophy"),
                Tab(text: "Roundups"),
                Tab(text: "Video Shorts"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                PageView.builder(
                  scrollDirection: Axis.vertical,
                  // itemCount: 5,
                  itemBuilder: (context, index) {
                    return FeedPage();
                  },
                ),
                Center(child: Text("Champions Trophy Content")),
                Center(child: Text("Roundups Content")),
                Center(child: Text("Video Shorts Content")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
