import 'package:arfii/Vendors/config/router/router_name.dart';
import 'package:arfii/base_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: RouteName.home,
  routes: [
    ShellRoute(
      builder: (context, state, child) => BasePage(child: child),
      routes: [
        GoRoute(
          path: RouteName.home,
          name: RouteName.home,
          builder: (context, state) =>
              const PlaceholderPage(pageName: "Home Page"),
        ),
        GoRoute(
          path: RouteName.wishlist,
          name: RouteName.wishlist,
          builder: (context, state) =>
              const PlaceholderPage(pageName: "Wishlist Page"),
        ),
        GoRoute(
          path: RouteName.chat,
          name: RouteName.chat,
          builder: (context, state) =>
              const PlaceholderPage(pageName: "Chat Page"),
        ),
        GoRoute(
          path: RouteName.profile,
          name: RouteName.profile,
          builder: (context, state) =>
              const PlaceholderPage(pageName: "Profile Page"),
        ),
      ],
    ),

    /// Non-bottom-nav routes
    GoRoute(
      path: RouteName.userPanel,
      name: RouteName.userPanel,
      builder: (context, state) =>
          const PlaceholderPage(pageName: "User Panel"),
    ),
    GoRoute(
      path: RouteName.vendorPanel,
      name: RouteName.vendorPanel,
      builder: (context, state) =>
          const PlaceholderPage(pageName: "Vendor Panel"),
    ),
  ],
);

class PlaceholderPage extends StatelessWidget {
  final String pageName;

  const PlaceholderPage({Key? key, required this.pageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
      ),
      body: Center(
        child: Text(
          '$pageName - No content yet!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
