import 'package:flutter/material.dart';

class Bio23IT0549DilshanScreen extends StatefulWidget {
  const Bio23IT0549DilshanScreen({super.key});

  @override
  State<Bio23IT0549DilshanScreen> createState() =>
      _Bio23IT0549DilshanScreenState();
}

class _Bio23IT0549DilshanScreenState extends State<Bio23IT0549DilshanScreen> {
  // Nordic Frost, Deep Cobalt & Warm Amber Palette
  static const Color _frostBg = Color(0xFFF1F5F9);
  static const Color _cardWhite = Color(0xFFFFFFFF);
  static const Color _cobaltDark = Color(0xFF0F172A);
  static const Color _slateText = Color(0xFF475569);
  static const Color _amberAccent = Color(0xFFD97706);
  static const Color _tealAccent = Color(0xFF0D9488);
  static const Color _indigoAccent = Color(0xFF2563EB);
  static const Color _frostBorder = Color(0xFFCBD5E1);
  static const Color _softTint = Color(0xFFE2E8F0);

  int _selectedGroup = 0;

  final List<String> _skillGroups = [
    'Programming',
    'Frontend',
    'Backend & APIs',
    'Databases & DevOps',
  ];

  final List<List<String>> _skillsData = [
    ['JavaScript', 'TypeScript', 'Python', 'Java', 'Dart'],
    ['React.js', 'TypeScript', 'HTML', 'CSS', 'Flutter'],
    ['Node.js', 'Express.js', 'Nest.js', 'REST APIs', 'Prisma'],
    [
      'MongoDB',
      'PostgreSQL',
      'Git',
      'GitHub',
      'Postman',
      'VS Code',
      'Docker',
      'Kubernetes',
      'Jira',
    ],
  ];

  final List<List<String>> _projectsData = [
    [
      'Freight Forward Management System',
      '2025 – Present • React.js, Node.js (Nest.js), TypeScript, Prisma, PostgreSQL',
      'Logistics & ORM',
      'Developed a full-stack system for managing freight forwarding and logistics operations, shipment workflows, structured relational data with PostgreSQL & Prisma ORM, and RESTful backend APIs in TypeScript.',
    ],
    [
      'Inventory Management System (POS System)',
      'MERN Stack',
      'Retail POS',
      'Built RESTful APIs with MongoDB integration, role-based access control, barcode support, inventory tracking, and reporting — actively deployed in a real-world retail shop for daily sales & stock.',
    ],
    [
      'Shop Wave AI Integrated Application',
      'MERN Stack, AI Integration',
      'AI & Vite',
      'Developed an AI-integrated application using a modern Vite-based frontend architecture, component-based UI practices, and AI features enhancing user experience.',
    ],
    [
      'Chatbot SaaS Application',
      'MERN Stack, REST APIs, AI',
      'SaaS Platform',
      'Designed a scalable SaaS-based chatbot application with AI conversational features and a web interface for users to interact with and manage chatbot workflows.',
    ],
    [
      'Automated Birthday Card Generation System',
      'Mobile Application • Flutter, Dart',
      'Mobile App',
      'Built a Flutter & Dart mobile app that automatically generates personalized birthday cards using personal details, photographs, and shareable greeting templates.',
    ],
  ];

  void _showNotice(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: _cobaltDark,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _frostBg,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(20, 14, 20, 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: _cardWhite,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: _frostBorder),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16,
                        color: _cobaltDark,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _buildHeaderCard(),
              const SizedBox(height: 14),
              _buildContactAndLinksCard(),
              const SizedBox(height: 22),
              _buildBlockLabel('PROFILE'),
              const SizedBox(height: 8),
              _buildProfileCard(),
              const SizedBox(height: 22),
              _buildBlockLabel('TECHNICAL SKILLS'),
              const SizedBox(height: 8),
              _buildSkillsCard(),
              const SizedBox(height: 22),
              _buildBlockLabel('PROJECTS'),
              const SizedBox(height: 8),
              for (final proj in _projectsData) _buildProjectCard(proj),
              const SizedBox(height: 14),
              _buildBlockLabel('EXPERIENCE & EDUCATION'),
              const SizedBox(height: 8),
              _buildExperienceAndEducation(),
              const SizedBox(height: 22),
              _buildBlockLabel('REFERENCES'),
              const SizedBox(height: 8),
              _buildReferencesCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _cobaltDark,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: _amberAccent, width: 2.5),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/Dilshan.jpeg',
                    width: 68,
                    height: 68,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) => Container(
                      width: 68,
                      height: 68,
                      color: const Color(0xFF1E293B),
                      alignment: Alignment.center,
                      child: const Text(
                        'DW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'DILSHAN WICKRAMPALA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.4,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'IT Undergraduate | Software Engineer',
                      style: TextStyle(
                        color: Color(0xFFFBBF24),
                        fontSize: 12.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      'Sri Lanka • Full-Stack, AI, SaaS & Mobile',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.72),
                        fontSize: 11.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _StatItem(top: '2024 – Now', sub: 'Dev Experience'),
                _StatItem(top: '5 Projects', sub: 'Web, AI, SaaS & App'),
                _StatItem(top: 'ITUM', sub: 'Diploma in IT'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactAndLinksCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _frostBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: _ContactPill(
                  icon: Icons.call_rounded,
                  label: '+94 758349141',
                  color: _tealAccent,
                  onTap: () => _showNotice('Phone: +94 758349141'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _ContactPill(
                  icon: Icons.alternate_email_rounded,
                  label: 'ashmikadilshan6@gmail.com',
                  color: _indigoAccent,
                  onTap: () => _showNotice('Email: ashmikadilshan6@gmail.com'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _UrlChip(label: 'LinkedIn: /in/ashmikadilshan'),
              _UrlChip(label: 'GitHub: dilshan12w'),
              _UrlChip(label: 'Portfolio: dilsnspolio.vercel.app'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBlockLabel(String label) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: _amberAccent,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(
            color: _cobaltDark,
            fontSize: 13,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.1,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _frostBorder),
      ),
      child: const Text(
        'IT undergraduate at the Institute of Technology, University of Moratuwa, with hands-on experience developing full-stack web and mobile applications. Skilled in JavaScript, React.js, Node.js, Express.js, MongoDB, PostgreSQL, Flutter, and REST APIs. Experienced in building practical software solutions including business management systems, AI-integrated applications, SaaS platforms, and mobile applications. Interested in software engineering, web development, mobile application development, and cybersecurity.',
        style: TextStyle(color: _slateText, fontSize: 13, height: 1.55),
      ),
    );
  }

  Widget _buildSkillsCard() {
    final activeList = _skillsData[_selectedGroup];
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _frostBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(_skillGroups.length, (idx) {
                final selected = _selectedGroup == idx;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedGroup = idx),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: selected ? _tealAccent : _softTint,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        _skillGroups[idx],
                        style: TextStyle(
                          color: selected ? Colors.white : _cobaltDark,
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
              for (final item in activeList)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: _frostBg,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: _frostBorder),
                  ),
                  child: Text(
                    item,
                    style: const TextStyle(
                      color: _cobaltDark,
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
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _frostBorder),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 4,
            height: 76,
            decoration: BoxDecoration(
              color: _indigoAccent,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        proj[0],
                        style: const TextStyle(
                          color: _cobaltDark,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: _amberAccent.withValues(alpha: 0.16),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        proj[2],
                        style: const TextStyle(
                          color: _amberAccent,
                          fontSize: 10.5,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  proj[1],
                  style: const TextStyle(
                    color: _tealAccent,
                    fontSize: 11.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  proj[3],
                  style: const TextStyle(
                    color: _slateText,
                    fontSize: 12.8,
                    height: 1.45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceAndEducation() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _cardWhite,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: _frostBorder),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Independent Software Developer (2024 – Present)',
                style: TextStyle(
                  color: _cobaltDark,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '• Designed and developed full-stack web and mobile applications using modern software development technologies.\n'
                '• Worked with Docker to containerize application environments and simplify development, testing, and deployment workflows.\n'
                '• Worked across frontend, backend, database, REST API development, authentication, and application deployment.\n'
                '• Used Git and GitHub for version control and followed structured software development workflows.\n'
                '• Used AI-assisted development tools to improve development productivity, debugging, and implementation efficiency.',
                style: TextStyle(
                  color: _slateText,
                  fontSize: 12.6,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _cardWhite,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: _frostBorder),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Diploma in Information Technology',
                style: TextStyle(
                  color: _cobaltDark,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Institute of Technology, University of Moratuwa (ITUM)',
                style: TextStyle(
                  color: _tealAccent,
                  fontSize: 12.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildReferencesCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _frostBorder),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ms. Tharukshi Adasuriya',
            style: TextStyle(
              color: _cobaltDark,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            'Lecturer, Division of Information Technology • ITUM',
            style: TextStyle(color: _slateText, fontSize: 12),
          ),
          Text(
            'tharukshin@itum.mrt.ac.lk  |  +94 771902981',
            style: TextStyle(
              color: _indigoAccent,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          Divider(height: 20, color: _frostBorder),
          Text(
            'Ms. D.A.Shashika Ruwanmini',
            style: TextStyle(
              color: _cobaltDark,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            'Lecturer, Department of Information Technology • ITUM',
            style: TextStyle(color: _slateText, fontSize: 12),
          ),
          Text(
            'ruwanminis@itum.mrt.ac.lk  |  +94 778558303',
            style: TextStyle(
              color: _indigoAccent,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String top;
  final String sub;

  const _StatItem({required this.top, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          top,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          sub,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.7),
            fontSize: 10.5,
          ),
        ),
      ],
    );
  }
}

class _ContactPill extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _ContactPill({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFF1F5F9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFCBD5E1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 15, color: color),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFF0F172A),
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

class _UrlChip extends StatelessWidget {
  final String label;

  const _UrlChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFE2E8F0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF0F172A),
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
