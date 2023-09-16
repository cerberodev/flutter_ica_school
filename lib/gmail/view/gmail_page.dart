import 'package:app_dos/gmail/gmail.dart';
import 'package:flutter/material.dart';

class GmailPage extends StatelessWidget {
  const GmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('gmailPage_scaffold'),
      drawer: Drawer(
        key: const Key('gmailPage_drawer'),
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Add a status'),
              onTap: () => debugPrint('gmailPage_drawer_item1'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.all_inbox),
              trailing: const Text('99+'),
              title: const Text('All Inboxes'),
              onTap: () => debugPrint('gmailPage_drawer_item3'),
            ),
            const Divider(),
            ListTile(
              title: const Text('Item 2'),
              onTap: () => debugPrint('gmailPage_drawer_item2'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        key: const Key('gmailPage_floatingActionButton'),
        heroTag: 'gmailPage_floatingActionButton',
        onPressed: () => debugPrint('gmailPage_floatingActionButton'),
        child: const Icon(Icons.edit_rounded),
      ),
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Mails(
                title: 'Welcome to Gmail',
                content:
                    '''A declarative routing package for Flutter that uses the Router API to provide a convenient, url-based API for navigating between different screens. You can define URL patterns, navigate using a URL, handle deep links, and a number of other navigation-related scenarios.''',
                time: '9:00 AM',
                hasAttachment: true,
                nameAttachment: 'go_router 10.1.2 ',
                sender: 'flutter.dev',
                imageSender:
                    'https://pub.dev/static/hash-v7cgjij4/img/ff-banner-desktop-2x.png',
              ),
              Mails(
                title: 'Welcome to Gmail',
                content: 'You have 5 unread emails',
                time: '9:00 AM',
                hasAttachment: true,
                nameAttachment: 'Flutter Learning',
                sender: 'Gmail Team',
                imageSender:
                    'https://avatars.githubusercontent.com/u/47544543?s=400&v=4',
              ),
              Mails(
                title: 'Welcome to Gmail',
                content: 'You have 5 unread emails',
                time: '9:00 AM',
                hasAttachment: true,
                sender: 'Gmail Team',
                imageSender:
                    'https://avatars.githubusercontent.com/u/47544543?s=400&v=4',
              ),
              Mails(
                title: 'Welcome to Gmail',
                content: 'You have 5 unread emails',
                time: '9:00 AM',
                hasAttachment: true,
                sender: 'Gmail Team',
                imageSender:
                    'https://avatars.githubusercontent.com/u/47544543?s=400&v=4',
              ),
              Mails(
                title: 'Welcome to Gmail',
                content: 'You have 5 unread emails',
                time: '9:00 AM',
                hasAttachment: true,
                sender: 'Gmail Team',
                imageSender:
                    'https://avatars.githubusercontent.com/u/47544543?s=400&v=4',
              ),
              Mails(
                title: 'Welcome to Gmail',
                content: 'You have 5 unread emails',
                time: '9:00 AM',
                hasAttachment: true,
                sender: 'Gmail Team',
                imageSender:
                    'https://avatars.githubusercontent.com/u/47544543?s=400&v=4',
              ),
              Mails(
                title: 'Welcome to Gmail',
                content: 'You have 5 unread emails',
                time: '9:00 AM',
                hasAttachment: true,
                sender: 'Gmail Team',
                imageSender:
                    'https://avatars.githubusercontent.com/u/47544543?s=400&v=4',
              ),
              Mails(
                title: 'Welcome to Gmail',
                content: 'You have 5 unread emails',
                time: '9:00 AM',
                hasAttachment: true,
                sender: 'Gmail Team',
                imageSender:
                    'https://avatars.githubusercontent.com/u/47544543?s=400&v=4',
              ),
              Mails(
                title: 'Welcome to Gmail',
                content: 'You have 5 unread emails',
                time: '9:00 AM',
                hasAttachment: true,
                sender: 'Gmail Team',
                imageSender:
                    'https://avatars.githubusercontent.com/u/47544543?s=400&v=4',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
