import 'package:flutter/material.dart';

class Bio23IT0542VirajScreen extends StatefulWidget {
  const Bio23IT0542VirajScreen({super.key});

  @override
  State<Bio23IT0542VirajScreen> createState() => _Bio23IT0542VirajScreenState();
}

class _Bio23IT0542VirajScreenState extends State<Bio23IT0542VirajScreen> {
  // Midnight Slate & Violet/Emerald Engineering Palette
  static const Color _bgSlate = Color(0xFF0B1120);
  static const Color _surfaceCard = Color(0xFF111827);
  static const Color _surfaceElevated = Color(0xFF1E293B);
  static const Color _textPrimary = Color(0xFFF8FAFC);
  static const Color _textMuted = Color(0xFF94A3B8);
  static const Color _violetAccent = Color(0xFF8B5CF6);
  static const Color _emeraldAccent = Color(0xFF10B981);
  static const Color _skyAccent = Color(0xFF38BDF8);
  static const Color _borderLine = Color(0xFF273549);

  int _selectedStackIndex = 0;

  final List<String> _stackCategories = [
    'Languages',
    'Frameworks',
    'Databases',
    'Tools & Practices',
  ];

  final List<IconData> _stackIcons = [
    Icons.data_object_rounded,
    Icons.layers_outlined,
    Icons.storage_rounded,
    Icons.build_circle_outlined,
  ];

  final List<List<String>> _stackItems = [
    ['Dart', 'Java', 'Python', 'JavaScript', 'TypeScript', 'HTML/CSS'],
    [
      'React',
      'Node.js',
      'Express',
      'Flutter',
      'React Native',
      'Spring Boot',
      'Tailwind CSS',
    ],
    ['MySQL', 'PostgreSQL', 'MongoDB', 'Firebase'],
    [
      'Android Studio',
      'VS Code',
      'Git',
      'GitHub',
      'Postman',
      'UI/UX Design',
      'RESTful APIs',
      'WebSockets',
      'Agile Development',
    ],
  ];

  void _notify(String info) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(info),
        backgroundColor: _surfaceElevated,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgSlate,
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
                        color: _surfaceCard,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: _borderLine),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16,
                        color: _textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _buildProfileBanner(),
              const SizedBox(height: 14),
              _buildQuickContactStrip(),
              const SizedBox(height: 24),
              _buildSectionTitle(Icons.flag_outlined, 'Career Objective'),
              const SizedBox(height: 10),
              _buildObjectiveCard(),
              const SizedBox(height: 24),
              _buildSectionTitle(Icons.code_rounded, 'Technical Stack'),
              const SizedBox(height: 10),
              _buildStackExplorer(),
              const SizedBox(height: 24),
              _buildSectionTitle(
                Icons.rocket_launch_outlined,
                'Featured Engineering Projects',
              ),
              const SizedBox(height: 10),
              _buildDocRoadProjectCard(),
              const SizedBox(height: 14),
              _buildProChartProjectCard(),
              const SizedBox(height: 24),
              _buildSectionTitle(Icons.school_outlined, 'Education'),
              const SizedBox(height: 10),
              _buildEducationCard(),
              const SizedBox(height: 24),
              _buildSectionTitle(
                Icons.workspace_premium_outlined,
                'Certifications & Achievements',
              ),
              const SizedBox(height: 10),
              _buildCertificationCard(),
              const SizedBox(height: 24),
              _buildSectionTitle(Icons.verified_user_outlined, 'Referees'),
              const SizedBox(height: 10),
              _buildRefereesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileBanner() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF172036), Color(0xFF111827)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: _borderLine),
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
                  gradient: const LinearGradient(
                    colors: [_violetAccent, _emeraldAccent],
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/Viraj.jpeg',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) => Container(
                      width: 70,
                      height: 70,
                      color: _surfaceElevated,
                      alignment: Alignment.center,
                      child: const Text(
                        'SV',
                        style: TextStyle(
                          color: _textPrimary,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: _violetAccent.withValues(alpha: 0.18),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: _violetAccent.withValues(alpha: 0.5),
                        ),
                      ),
                      child: const Text(
                        'SOFTWARE ENGINEERING',
                        style: TextStyle(
                          color: Color(0xFFC4B5FD),
                          fontSize: 10.5,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Sadisha Viraj',
                      style: TextStyle(
                        color: _textPrimary,
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      'K.K.S. Viraj • Batapola, Sri Lanka',
                      style: TextStyle(color: _textMuted, fontSize: 12.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            decoration: BoxDecoration(
              color: _bgSlate.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: _borderLine),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _MetricPill(label: 'Focus', value: 'Full-Stack'),
                _VerticalDivider(),
                _MetricPill(label: 'Graduation', value: '2027 (ITUM)'),
                _VerticalDivider(),
                _MetricPill(label: 'Core Builds', value: 'DocRoad & ProChart'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickContactStrip() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildContactBtn(
                icon: Icons.phone_rounded,
                label: '+94 72 209 4707',
                color: _emeraldAccent,
                onTap: () => _notify('Phone: +94 72 209 4707'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _buildContactBtn(
                icon: Icons.email_outlined,
                label: 'sadishaviraj@gmail.com',
                color: _skyAccent,
                onTap: () => _notify('Email: sadishaviraj@gmail.com'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
          decoration: BoxDecoration(
            color: _surfaceCard,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: _borderLine),
          ),
          child: const Wrap(
            alignment: WrapAlignment.spaceEvenly,
            spacing: 12,
            runSpacing: 6,
            children: [
              _LinkTag(icon: Icons.public_rounded, text: 'Portfolio'),
              _LinkTag(icon: Icons.person_pin_rounded, text: 'K.K.S.Viraj'),
              _LinkTag(icon: Icons.terminal_rounded, text: 'sadiya0001'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContactBtn({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: _surfaceCard,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: _borderLine),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 16, color: color),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: _textPrimary,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, size: 19, color: _emeraldAccent),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            color: _textPrimary,
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _buildObjectiveCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _surfaceCard,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _borderLine),
      ),
      child: const Text(
        'Software Engineering undergraduate with hands-on experience in end-to-end web application development. Proven ability to architect RESTful backend services, design relational database schemas, and integrate responsive front-end clients. Seeking an industrial training placement to build enterprise grade applications and contribute to scalable software ecosystems.',
        style: TextStyle(color: _textMuted, fontSize: 13.5, height: 1.55),
      ),
    );
  }

  Widget _buildStackExplorer() {
    final items = _stackItems[_selectedStackIndex];
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _surfaceCard,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _borderLine),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(_stackCategories.length, (i) {
                final active = _selectedStackIndex == i;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    selected: active,
                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          _stackIcons[i],
                          size: 14,
                          color: active ? Colors.white : _textMuted,
                        ),
                        const SizedBox(width: 5),
                        Text(_stackCategories[i]),
                      ],
                    ),
                    selectedColor: _violetAccent,
                    backgroundColor: _surfaceElevated,
                    side: BorderSide(
                      color: active ? _violetAccent : _borderLine,
                    ),
                    labelStyle: TextStyle(
                      color: active ? Colors.white : _textPrimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    onSelected: (_) => setState(() => _selectedStackIndex = i),
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
              for (final tech in items)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: _bgSlate,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: _emeraldAccent.withValues(alpha: 0.35),
                    ),
                  ),
                  child: Text(
                    tech,
                    style: const TextStyle(
                      color: _textPrimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDocRoadProjectCard() {
    const bullets = [
      'Engineered a layered MVC backend using Node.js and Express, exposing secure RESTful API endpoints with role-based access control.',
      'Architected a dual database system utilizing MongoDB for semi structured service requests and PostgreSQL for robust transactional user data.',
      'Implemented real time mechanic GPS tracking using Firebase Firestore listeners to stream live locations to the driver app and admin live map.',
      'Integrated Gemini APIs into the Node.js backend to power a diagnostic chatbot, and built a multi-factor recommendation engine to rank nearby mechanics.',
      'Built responsive, cross platform mobile interfaces in Flutter and an administrative web portal using React.js.',
    ];

    return _buildProjectBox(
      title: 'DocRoad - Smart Vehicle Repair & Roadside Assistance Platform',
      role: 'Full-Stack Developer • 2026',
      badge: 'Flutter • React • Node.js',
      accent: _violetAccent,
      bullets: bullets,
    );
  }

  Widget _buildProChartProjectCard() {
    const bullets = [
      'Built a real-time candlestick charting web app with React, TypeScript, Zustand and Lightweight Charts, streaming live market data over the Deriv WebSocket API.',
      'Implemented technical indicators and automated signal detection (RSI divergence and Bollinger Band patterns) on live price data, with unit tests in Vitest.',
      'Developed a 24/7 Node.js alert service on an Azure Linux VM (systemd) that sends Telegram notifications with deep links to the exact chart and candle.',
      'Set up a CI/CD pipeline with GitHub Actions (type checks, linting, tests, builds) deploying to Azure Static Web Apps with a custom domain, security headers and branch protection.',
    ];

    return _buildProjectBox(
      title: 'ProChart - Real-Time Trading Chart & Signal Alert System',
      role: 'Personal Project • 2026 • chart.prochart.me',
      badge: 'TypeScript • WebSockets • CI/CD',
      accent: _emeraldAccent,
      bullets: bullets,
    );
  }

  Widget _buildProjectBox({
    required String title,
    required String role,
    required String badge,
    required Color accent,
    required List<String> bullets,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: _surfaceCard,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: _borderLine),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      role,
                      style: TextStyle(
                        color: accent,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      title,
                      style: const TextStyle(
                        color: _textPrimary,
                        fontSize: 15.5,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  badge,
                  style: TextStyle(
                    color: accent,
                    fontSize: 10.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          for (final point in bullets)
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Icon(Icons.circle, size: 5, color: accent),
                  ),
                  const SizedBox(width: 9),
                  Expanded(
                    child: Text(
                      point,
                      style: const TextStyle(
                        color: _textMuted,
                        fontSize: 12.8,
                        height: 1.45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildEducationCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _surfaceCard,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _borderLine),
      ),
      child: const Column(
        children: [
          _EduRow(
            period: 'Expected 2027 • Sri Lanka',
            program: 'Information Technology',
            institution: 'Institute of Technology, University of Moratuwa',
            dotColor: _violetAccent,
          ),
          SizedBox(height: 14),
          _EduRow(
            period: '2019 - 2022 • Sri Lanka',
            program: 'GCE Advanced Level Examination - Physical Science',
            institution: 'Dharmasoka College - Ambalangoda',
            dotColor: _emeraldAccent,
          ),
        ],
      ),
    );
  }

  Widget _buildCertificationCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _surfaceCard,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _borderLine),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.military_tech_outlined, color: _skyAccent, size: 22),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              "Basic Certificate in English (60-Hour Course) - Sri Lanka English Language Graduates' Association.",
              style: TextStyle(
                color: _textPrimary,
                fontSize: 13.2,
                height: 1.45,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRefereesSection() {
    return Column(
      children: [
        _buildRefereeTile(
          name: 'Mr. Pramith Wigethunga',
          title: 'Software Engineer',
          org: 'Institute of Technology, University of Moratuwa',
          contact: 'wmpkw96@gmail.com  |  +94 71 788 8714',
        ),
        const SizedBox(height: 10),
        _buildRefereeTile(
          name: 'Mr. A.U.P. Athukorala',
          title: 'Head of the Division, Division of Information Technology',
          org: 'Institute of Technology, University of Moratuwa',
          contact: 'uthpalap@itum.mrt.ac.lk  |  011 212 400 (Ext. 1139)',
        ),
      ],
    );
  }

  Widget _buildRefereeTile({
    required String name,
    required String title,
    required String org,
    required String contact,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _surfaceCard,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _borderLine),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: _textPrimary,
              fontSize: 14.5,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            title,
            style: const TextStyle(color: _textMuted, fontSize: 12.5),
          ),
          Text(org, style: const TextStyle(color: _textMuted, fontSize: 12)),
          const SizedBox(height: 8),
          Text(
            contact,
            style: const TextStyle(
              color: _emeraldAccent,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _MetricPill extends StatelessWidget {
  final String label;
  final String value;

  const _MetricPill({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Color(0xFFF8FAFC),
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(color: Color(0xFF94A3B8), fontSize: 10.5),
        ),
      ],
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  const _VerticalDivider();

  @override
  Widget build(BuildContext context) {
    return Container(height: 24, width: 1, color: const Color(0xFF273549));
  }
}

class _LinkTag extends StatelessWidget {
  final IconData icon;
  final String text;

  const _LinkTag({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: const Color(0xFF8B5CF6)),
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFFF8FAFC),
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _EduRow extends StatelessWidget {
  final String period;
  final String program;
  final String institution;
  final Color dotColor;

  const _EduRow({
    required this.period,
    required this.program,
    required this.institution,
    required this.dotColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5),
          width: 9,
          height: 9,
          decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                period,
                style: TextStyle(
                  color: dotColor,
                  fontSize: 11.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                program,
                style: const TextStyle(
                  color: Color(0xFFF8FAFC),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                institution,
                style: const TextStyle(
                  color: Color(0xFF94A3B8),
                  fontSize: 12.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
