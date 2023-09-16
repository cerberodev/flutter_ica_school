import 'package:app_dos/l10n/l10n.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      height: 55,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(0.2, 0.2),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            key: const Key('gmailPage_menu_iconButton'),
            onPressed: () {
              Scaffold.of(context).openDrawer();
              debugPrint('gmailPage_menu_iconButton');
            },
            icon: const Icon(Icons.menu),
            tooltip: l10n.gmailSearchHeaderMenuTooltip,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: l10n.gmailSearchHeaderHintText,
                  border: InputBorder.none,
                  prefixIcon: IconButton(
                    key: const Key('gmailPage_search_iconButton'),
                    onPressed: () => debugPrint('gmailPage_search_iconButton'),
                    icon: const Icon(Icons.search),
                    tooltip: l10n.gmailSearchHeaderSearchTooltip,
                  ),
                  suffixIcon: const Icon(Icons.keyboard_voice),
                ),
              ),
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/47544543?s=400&v=4'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
