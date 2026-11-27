import 'package:flutter/material.dart';

class Bio23IT0550JaninduScreen extends StatefulWidget {
  const Bio23IT0550JaninduScreen({super.key});

  @override
  State<Bio23IT0550JaninduScreen> createState() =>
      _Bio23IT0550JaninduScreenState();
}

class _Bio23IT0550JaninduScreenState extends State<Bio23IT0550JaninduScreen> {
  // Light Blue Palette
  static const Color _lightBlueBg = Color(0xFFEFF6FF);
  static const Color _cardPure = Color(0xFFFFFFFF);
  static const Color _navyDark = Color(0xFF0F294A);
  static const Color _blueMuted = Color(0xFF476282);
  static const Color _skyAccent = Color(0xFF0284C7);
  static const Color _oceanAccent = Color(0xFF0369A1);
  static const Color _blueBorder = Color(0xFFBFDBFE);
  static const Color _blueSoft = Color(0xFFDBEAFE);

  int _selectedSkillCategory = 0;

  final List<String> _skillCategories = [
    'Programming',
    'Frontend',
    'Backend',
    'Databases',
    'Tools',
    'Soft Skills',
  ];

  final List<List<String>> _skillLists = [
    ['JavaScript', 'PHP', 'Java', 'Python'],
    ['React.js', 'Tailwind CSS', 'HTML5', 'CSS3', 'PWA'],
    ['Node.js', 'Express.js', 'REST API'],
    ['MySQL'],
    ['Git', 'GitHub', 'VS Code', 'Vercel', 'XAMPP'],
    ['Problem-solving', 'Time Management', 'Teamwork'],
  ];

  final List<List<String>> _projects = [
    [
      '01',
      'Smart Agricultural Machinery Testing and Planning System',
      'Five-Member Team • React.js, Node.js, PWA, MySQL',
      'Contributed to a smart agricultural machinery testing and planning system aimed at supporting the organization of machinery testing and planning activities. Focused on applying software solutions to agricultural machinery management and operational planning.',
    ],
    [
      '02',
      'Cricket Live Score System',
      'HTML, CSS, JavaScript, REST API',
      'Developed a cricket live-score application to present match scores and key match information in an easy-to-understand interface. Focused on displaying cricket match details and improving the user experience for cricket fans.',
    ],
    [
      '03',
      'TaskFlow - Task Management System',
      'HTML, CSS, JavaScript',
      'Developed a task management web application to organize daily activities, track task progress, and manage priorities. Focused on creating a user-friendly interface and improving productivity through efficient task organization.',
    ],
    [
      '04',
      'Bus Routing System',
      'HTML, CSS, JavaScript, PHP, MySQL',
      'Developed a bus routing system designed to help users access bus route information and identify suitable travel routes. Focused on organizing route-related data and presenting information in a clear and accessible format.',
    ],
  ];

  void _showInfo(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: _navyDark,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _lightBlueBg,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(20, 14, 20, 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: _cardPure,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: _blueBorder),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16,
                        color: _navyDark,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _buildCenteredProfileHeader(),
              const SizedBox(height: 14),
              _buildContactAndSocialRow(),
              const SizedBox(height: 22),
              _buildSectionHeader('SUMMARY'),
              const SizedBox(height: 8),
              _buildSummaryCard(),
              const SizedBox(height: 22),
              _buildSectionHeader('EDUCATION'),
              const SizedBox(height: 8),
              _buildEducationCard(),
              const SizedBox(height: 22),
              _buildSectionHeader('SKILLS'),
              const SizedBox(height: 8),
              _buildSkillsCard(),
              const SizedBox(height: 22),
              _buildSectionHeader('PROJECTS'),
              const SizedBox(height: 8),
              for (final proj in _projects) _buildProjectCard(proj),
              const SizedBox(height: 14),
              _buildSectionHeader('REFERENCES'),
              const SizedBox(height: 8),
              _buildReferencesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCenteredProfileHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      decoration: BoxDecoration(
        color: _navyDark,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/Janindu.jpeg',
              width: 90,
              height: 90,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => Container(
                width: 90,
                height: 90,
                color: const Color(0xFF1E3A5F),
                alignment: Alignment.center,
                child: const Text(
                  'JW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'Janindu Wijenayaka',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: _skyAccent.withValues(alpha: 0.24),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: _skyAccent.withValues(alpha: 0.6)),
            ),
            child: const Text(
              'Full-Stack Developer Intern',
              style: TextStyle(
                color: Color(0xFFBAE6FD),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Walasmulla, Srilanka',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.78),
              fontSize: 12.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactAndSocialRow() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _ActionTile(
                icon: Icons.phone_outlined,
                label: '0785946682',
                accent: _oceanAccent,
                onTap: () => _showInfo('Phone: 0785946682'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _ActionTile(
                icon: Icons.mail_outline_rounded,
                label: 'janinduwijenayaka@gmail.com',
                accent: _skyAccent,
                onTap: () => _showInfo('Email: janinduwijenayaka@gmail.com'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          decoration: BoxDecoration(
            color: _cardPure,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: _blueBorder),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _SocialPill(icon: Icons.work_outline_rounded, label: 'Linkedin'),
              _SocialPill(icon: Icons.code_rounded, label: 'GitHub'),
              _SocialPill(icon: Icons.language_rounded, label: 'Portfolio'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            width: 6,
            height: 18,
            decoration: BoxDecoration(
              color: _skyAccent,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              color: _navyDark,
              fontSize: 14,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardPure,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _blueBorder),
      ),
      child: const Text(
        'IT Undergraduate at the Institute of Technology, University of Moratuwa (ITUM), with a strong interest in Full-Stack Software Development. Familiar with JavaScript, React.js, Node.js, PHP, and MySQL. Hands-on experience in developing academic and personal web applications, focusing on responsive user interfaces, backend development, and database management. Passionate about learning new technologies and building practical software solutions.',
        style: TextStyle(color: _blueMuted, fontSize: 13, height: 1.55),
      ),
    );
  }

  Widget _buildEducationCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardPure,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _blueBorder),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '2025 - Present',
            style: TextStyle(
              color: _skyAccent,
              fontSize: 11.5,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'National Diploma in Technology (Information Technology)',
            style: TextStyle(
              color: _navyDark,
              fontSize: 14.5,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 3),
          Text(
            'Institute of Technology, University of Moratuwa (ITUM)',
            style: TextStyle(
              color: _oceanAccent,
              fontSize: 12.5,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'Diyagama, Srilanka',
            style: TextStyle(color: _blueMuted, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsCard() {
    final items = _skillLists[_selectedSkillCategory];
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardPure,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _blueBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(_skillCategories.length, (i) {
                final active = _selectedSkillCategory == i;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedSkillCategory = i),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: active ? _skyAccent : _blueSoft,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        _skillCategories[i],
                        style: TextStyle(
                          color: active ? Colors.white : _navyDark,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final skill in items)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: _lightBlueBg,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: _blueBorder),
                  ),
                  child: Text(
                    skill,
                    style: const TextStyle(
                      color: _navyDark,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(List<String> proj) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardPure,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _blueBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: _navyDark,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  proj[0],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  proj[2],
                  style: const TextStyle(
                    color: _oceanAccent,
                    fontSize: 11.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            proj[1],
            style: const TextStyle(
              color: _navyDark,
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            proj[3],
            style: const TextStyle(
              color: _blueMuted,
              fontSize: 12.8,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferencesSection() {
    return Column(
      children: [
        _buildRefTile(
          name: 'Dr.Kalpana Galappaththi',
          role: 'Senior Lecturer, Division of Information Technology, ITUM',
          contact: 'kgalappaththi@itum.mrt.ac.lk  •  +94 714434530',
        ),
        const SizedBox(height: 10),
        _buildRefTile(
          name: 'Mrs.Shashika Ruwanmini',
          role: 'Senior Lecturer, Division of Information Technology, ITUM',
          contact: 'ruwanminis@itum.mrt.ac.lk  •  +94 778558303',
        ),
      ],
    );
  }

  Widget _buildRefTile({
    required String name,
    required String role,
    required String contact,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: _blueSoft,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _blueBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: _navyDark,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 2),
          Text(role, style: const TextStyle(color: _blueMuted, fontSize: 12)),
          const SizedBox(height: 6),
          Text(
            contact,
            style: const TextStyle(
              color: _skyAccent,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color accent;
  final VoidCallback onTap;

  const _ActionTile({
    required this.icon,
    required this.label,
    required this.accent,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFFBFDBFE)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 15, color: accent),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFF0F294A),
                  fontSize: 11.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SocialPill extends StatelessWidget {
  final IconData icon;
  final String label;

  const _SocialPill({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: const Color(0xFF0284C7)),
        const SizedBox(width: 4),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF0F294A),
            fontSize: 11.5,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
