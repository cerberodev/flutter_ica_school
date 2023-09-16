import 'package:app_dos/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      key: const Key('homePage_scaffold'),
      appBar: AppBar(title: Text(l10n.homeAppBarTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              key: const Key('homePage_router_counter_elevatedButton'),
              onPressed: () => context.go('/counter'),
              child: Text(l10n.homeRouterButtonCounter),
            ),
            ElevatedButton(
              key: const Key('homePage_router_gmail_elevatedButton'),
              onPressed: () => context.go('/gmail'),
              child: Text(l10n.homeRouterButtonGmail),
            ),
          ],
        ),
      ),
    );
  }
}
