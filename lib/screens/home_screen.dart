import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import 'login_screen.dart';
import 'bios/bio_23it0548_maleesha.dart';

class GroupMemberItem {
  final String studentId;
  final String name;
  final String? assetImage;
  final Widget Function() screenBuilder;

  const GroupMemberItem({
    required this.studentId,
    required this.name,
    this.assetImage,
    required this.screenBuilder,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<GroupMemberItem> _members = [
    GroupMemberItem(
      studentId: '23IT0542',
      name: 'K K S Viraj',
      assetImage: null,
      screenBuilder: () => const _PlaceholderMemberScreen(
        studentId: '23IT0542',
        name: 'K K S Viraj',
      ),
    ),
    GroupMemberItem(
      studentId: '23IT0543',
      name: 'T Vithusanan',
      assetImage: null,
      screenBuilder: () => const _PlaceholderMemberScreen(
        studentId: '23IT0543',
        name: 'T Vithusanan',
      ),
    ),
    GroupMemberItem(
      studentId: '23IT0544',
      name: 'W N A Wedikkara',
      assetImage: null,
      screenBuilder: () => const _PlaceholderMemberScreen(
        studentId: '23IT0544',
        name: 'W N A Wedikkara',
      ),
    ),
    GroupMemberItem(
      studentId: '23IT0545',
      name: 'W M M M D C Weerarathna',
      assetImage: null,
      screenBuilder: () => const _PlaceholderMemberScreen(
        studentId: '23IT0545',
        name: 'W M M M D C Weerarathna',
      ),
    ),
    GroupMemberItem(
      studentId: '23IT0546',
      name: 'R L Weerasinghe',
      assetImage: null,
      screenBuilder: () => const _PlaceholderMemberScreen(
        studentId: '23IT0546',
        name: 'R L Weerasinghe',
      ),
    ),
    GroupMemberItem(
      studentId: '23IT0547',
      name: 'W A D H D Wickramaarachchi',
      assetImage: null,
      screenBuilder: () => const _PlaceholderMemberScreen(
        studentId: '23IT0547',
        name: 'W A D H D Wickramaarachchi',
      ),
    ),
    GroupMemberItem(
      studentId: '23IT0548',
      name: 'W A M S Wickramaarachchi',
      assetImage: 'assets/images/Maleesha.jpeg',
      screenBuilder: () => const Bio23IT0548Screen(),
    ),
    GroupMemberItem(
      studentId: '23IT0549',
      name: 'P G G D Wickramapala',
      assetImage: null,
      screenBuilder: () => const _PlaceholderMemberScreen(
        studentId: '23IT0549',
        name: 'P G G D Wickramapala',
      ),
    ),
    GroupMemberItem(
      studentId: '23IT0550',
      name: 'J C Wijayanayaka',
      assetImage: null,
      screenBuilder: () => const _PlaceholderMemberScreen(
        studentId: '23IT0550',
        name: 'J C Wijayanayaka',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0F14),
      appBar: AppBar(
        title: const Text('Group 10 – Members'),
        actions: [
          IconButton(
            tooltip: 'Logout',
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await context.read<AuthStateProvider>().signOut();
              if (context.mounted) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                  (_) => false,
                );
              }
            },
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _members.length,
        separatorBuilder: (_, _) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final member = _members[index];
          return Card(
            color: const Color(0xFF171B24),
            child: ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.cyanAccent.withValues(alpha: 0.16),
                child: member.assetImage != null
                    ? ClipOval(
                        child: Image.asset(
                          member.assetImage!,
                          width: 48,
                          height: 48,
                          fit: BoxFit.cover,
                          errorBuilder: (_, _, _) => const Icon(
                            Icons.person,
                            color: Colors.cyanAccent,
                          ),
                        ),
                      )
                    : const Icon(Icons.person, color: Colors.cyanAccent),
              ),
              title: Text(member.name),
              subtitle: Text(member.studentId),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => member.screenBuilder()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _PlaceholderMemberScreen extends StatelessWidget {
  final String studentId;
  final String name;

  const _PlaceholderMemberScreen({required this.studentId, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(
        child: Text(
          '$name ($studentId)\nBio screen pending integration.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
