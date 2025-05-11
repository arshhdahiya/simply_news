import 'package:flutter/material.dart';

enum ScaffoldLayout {
  standard,
  scrollable,
  centralized,
  fullScreen,
}

class SScaffold extends StatelessWidget {
  const SScaffold({
    super.key,
    required this.children,
    this.color,
    this.layout = ScaffoldLayout.standard,
    this.crossAxisAlignment,
    this.appBar,
    this.drawer,
    this.bottomNavigationBar,
    this.floatingActionButton,
  });

  final List<Widget> children;
  final Color? color;
  final ScaffoldLayout layout;
  final CrossAxisAlignment? crossAxisAlignment;
  final AppBar? appBar;
  final Drawer? drawer;
  final BottomNavigationBar? bottomNavigationBar;
  final FloatingActionButton? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color ?? Colors.white,
      appBar: appBar,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    switch (layout) {
      case ScaffoldLayout.standard:
        return Column(
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          children: children,
        );

      case ScaffoldLayout.scrollable:
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            children: children,
          ),
        );

      case ScaffoldLayout.centralized:
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            children: children,
          ),
        );

      case ScaffoldLayout.fullScreen:
        return SizedBox.expand(
          child: Column(
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            children: children,
          ),
        );
    }
  }
}
