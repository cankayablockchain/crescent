part of 'settings_page.dart';

class SettingsLayout extends StatelessWidget {
  const SettingsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          dense: true,
          title: const Text('Manage accounts'),
          subtitle: const Text('Add or remove accounts'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () async {},
        ),
        ListTile(
          dense: true,
          title: const Text('Adress book'),
          subtitle: const Text('Manage your contacts'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
        ListTile(
          dense: true,
          title: const Text('Privacy'),
          subtitle: const Text('Manage your privacy'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
        const Divider(),
        ListTile(
          dense: true,
          title: const Text('Dark Mode'),
          trailing: Switch(
            value: false,
            onChanged: (value) {},
          ),
        ),
        ListTile(
          dense: true,
          title: const Text('About'),
          onTap: () {},
        ),
        const Divider(),
        ListTile(
          dense: true,
          title: const Text('Sign out'),
          onTap: () => {},
        ),
      ],
    );
  }
}
