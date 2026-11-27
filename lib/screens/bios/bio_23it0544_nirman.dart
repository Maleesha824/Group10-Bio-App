import 'package:flutter/material.dart';

class Bio23IT0544NirmanScreen extends StatefulWidget {
  const Bio23IT0544NirmanScreen({super.key});

  @override
  State<Bio23IT0544NirmanScreen> createState() =>
      _Bio23IT0544NirmanScreenState();
}

class _Bio23IT0544NirmanScreenState extends State<Bio23IT0544NirmanScreen> {
  // Pistachio Mint, Deep Pine & Warm Ochre Palette
  static const Color _mintBg = Color(0xFFF2F7F4);
  static const Color _cardWhite = Color(0xFFFFFFFF);
  static const Color _pineDark = Color(0xFF0E3B36);
  static const Color _pineText = Color(0xFF163A36);
  static const Color _mutedSlate = Color(0xFF526663);
  static const Color _ochreAccent = Color(0xFFC87D1E);
  static const Color _emeraldMid = Color(0xFF1E6B62);
  static const Color _mintBorder = Color(0xFFCFE2D9);
  static const Color _mintSoft = Color(0xFFE1EFE8);

  int _selectedSkillIndex = 0;

  final List<String> _skillCategories = [
    'Cloud & DevOps',
    'AI & Systems',
    'Databases & Arch',
    'Languages',
    'Web & Mobile',
    'Soft Skills',
  ];

  final List<List<String>> _skillsByCategory = [
    [
      'Docker',
      'Docker Compose',
      'Linux Server Admin (Ubuntu, Debian)',
      'Nginx (Reverse Proxy & SSL/TLS)',
      'GitHub Actions (CI/CD)',
      'AWS',
      'Microsoft Azure (AZ-900 in progress)',
      'Bash Shell Scripting',
    ],
    [
      'Model Context Protocol (MCP)',
      'Hugging Face Spaces',
      'Transformer Models (LLMs)',
      'NLP Pipelines',
      'Prompt Engineering',
    ],
    [
      'PostgreSQL (Schema Migrations & Indexing)',
      'MySQL (3NF Relational Modeling)',
      'SQLite (Offline-First)',
      'Supabase',
      'Microservices',
      'Clean Architecture',
    ],
    [
      'Python',
      'JavaScript (ES6+)',
      'TypeScript',
      'Dart',
      'Java',
      'PHP',
      'Go (Golang)',
      'SQL',
      'HTML5',
      'CSS3 / Tailwind CSS',
    ],
    [
      'React.js',
      'Next.js',
      'Node.js',
      'Express.js',
      'Flutter (Android/iOS)',
      'Vue.js',
      'RESTful APIs',
      'State Management',
    ],
    [
      'Technical Leadership',
      'Analytical Problem Solving',
      'Team Collaboration',
      'Effective Communication',
      'Strategic Planning',
    ],
  ];

  final List<List<String>> _projects = [
    [
      'ASVANNA - Agricultural Market Intelligence Platform',
      'Lead Architect & Full-Stack Systems Developer • 2025-2026',
      'Docker • PostgreSQL • React • Flutter',
      'Containerized PostgreSQL, Express REST API, and React frontend using Docker Compose with GitHub Actions CI and Linux VPS deployment behind Nginx + SSL for ITUM. Built a 3-tier pre-cultivation risk engine (Safe < 70%, Warning 70-85%, Over-Planted > 85%) and a 5 km localized farmer-buyer trading platform.',
    ],
    [
      'Kapruka AI Shopping Assistant - Conversational E-Commerce',
      'AI & Web Systems Engineer • 2026',
      'MCP • React • Express',
      'Connected a React frontend to Express serverless proxies talking to a remote Kapruka Model Context Protocol (MCP) server for live catalog queries, intent clarification, and multilingual shopping support (English, Sinhala, Tanglish).',
    ],
    [
      'AI Learning Assistant & Educational NLP Engine',
      'AI Developer • 2025-2026',
      'Hugging Face • NLP • LLMs',
      'Deployed an educational AI assistant on Hugging Face Spaces using open-source NLP transformer pipelines for structured coding solutions, CS tutorials, and doubt resolution.',
    ],
    [
      'Career Path (Career Compass) - Diagnostic IT Career Analytics',
      'Lead Full-Stack Architect • 2025',
      '3NF MySQL • Linux Cloud',
      'Designed and normalized a 3NF relational MySQL schema with automated backups on Linux cloud hosting, handling high student concurrency during national university launches.',
    ],
    [
      'Distribution Management System (DMS) - Offline-First Suite',
      'Full-Stack & Mobile Developer • 2025-2026',
      'Flutter • SQLite • Supabase',
      'Built a cross-platform Flutter app for field sales reps with SQLite offline storage, automated Morning Sync & background delta sync to Supabase PostgreSQL, and Bluetooth ESC/POS 58mm thermal printing.',
    ],
    [
      'Enterprise ERP Asset Management Module',
      'Software Developer • 2025-2026',
      'Go • Vue.js',
      'Developed full-stack asset tracking modules in Go and Vue.js covering company hardware, status transitions, disposal records, searchable inventories, and audit trails.',
    ],
  ];

  void _showToast(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: _pineDark,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _mintBg,
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
                        border: Border.all(color: _mintBorder),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16,
                        color: _pineText,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _buildPineHeroHeader(),
              const SizedBox(height: 12),
              _buildContactDetailsCard(),
              const SizedBox(height: 22),
              _buildSectionTitle('PROFESSIONAL SUMMARY'),
              const SizedBox(height: 8),
              _buildSummaryCard(),
              const SizedBox(height: 22),
              _buildSectionTitle('TECHNICAL SKILLS & COMPETENCIES'),
              const SizedBox(height: 8),
              _buildSkillsSection(),
              const SizedBox(height: 22),
              _buildSectionTitle('FEATURED ENGINEERING PROJECTS'),
              const SizedBox(height: 8),
              for (final project in _projects) _buildProjectCard(project),
              const SizedBox(height: 14),
              _buildSectionTitle('PROFESSIONAL EXPERIENCE'),
              const SizedBox(height: 8),
              _buildExperienceSection(),
              const SizedBox(height: 22),
              _buildSectionTitle('EDUCATION & ACADEMIC QUALIFICATIONS'),
              const SizedBox(height: 8),
              _buildEducationCard(),
              const SizedBox(height: 22),
              _buildSectionTitle('LICENSES & CERTIFICATIONS'),
              const SizedBox(height: 8),
              _buildCertificationsCard(),
              const SizedBox(height: 22),
              _buildSectionTitle('LEADERSHIP & EXTRACURRICULAR'),
              const SizedBox(height: 8),
              _buildLeadershipCard(),
              const SizedBox(height: 22),
              _buildSectionTitle('PROFESSIONAL REFERENCES'),
              const SizedBox(height: 8),
              _buildReferencesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPineHeroHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      decoration: BoxDecoration(
        color: _pineDark,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/Nirman.jpeg',
              width: 88,
              height: 88,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => Container(
                width: 88,
                height: 88,
                color: _emeraldMid,
                alignment: Alignment.center,
                child: const Text(
                  'NA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'Nirman Achintha Wedikkara',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'IT Undergraduate | Aspiring DevOps, Cloud, AI & SE Intern',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFF6C46B),
              fontSize: 12.5,
              fontWeight: FontWeight.w700,
              height: 1.35,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Colombo & Bandarawela, Sri Lanka',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.78),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactDetailsCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _mintBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: _InfoButton(
                  icon: Icons.call_outlined,
                  label: '+94 78 859 7202',
                  onTap: () => _showToast('Phone: +94 78 859 7202'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _InfoButton(
                  icon: Icons.mail_outline_rounded,
                  label: 'nirmanachintha1313@gmail.com',
                  onTap: () =>
                      _showToast('Email: nirmanachintha1313@gmail.com'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _BadgeChip(text: 'linkedin.com/in/w-nirman-achintha'),
              _BadgeChip(text: 'github.com/NirMAN-15'),
              _BadgeChip(text: 'vibesolution.tech'),
              _BadgeChip(text: 'portfolio-nine-tau-2je4n7r09p.vercel.app'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: _ochreAccent,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            color: _pineDark,
            fontSize: 13,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.9,
          ),
        ),
      ],
    );
  }

  Widget _buildSummaryCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _mintBorder),
      ),
      child: const Text(
        'Performance-driven Information Technology Undergraduate seeking an internship focused on DevOps, Cloud, AI, and Software Engineering. Hands-on expertise in automating delivery pipelines, managing Linux servers, and containerizing workloads. Founder of Vibe Solution, architecting secure cloud infrastructure, deploying microservices, and orchestrating server environments. Integrates AI models and applies full-stack software engineering to build highly available systems.',
        style: TextStyle(color: _mutedSlate, fontSize: 13, height: 1.55),
      ),
    );
  }

  Widget _buildSkillsSection() {
    final skills = _skillsByCategory[_selectedSkillIndex];
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _mintBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(_skillCategories.length, (i) {
                final active = _selectedSkillIndex == i;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedSkillIndex = i),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: active ? _pineDark : _mintSoft,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        _skillCategories[i],
                        style: TextStyle(
                          color: active ? Colors.white : _pineText,
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
              for (final item in skills)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: _mintBg,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: _mintBorder),
                  ),
                  child: Text(
                    item,
                    style: const TextStyle(
                      color: _pineText,
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

  Widget _buildProjectCard(List<String> project) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _mintBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
            decoration: BoxDecoration(
              color: _ochreAccent.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              project[2],
              style: const TextStyle(
                color: _ochreAccent,
                fontSize: 11,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            project[0],
            style: const TextStyle(
              color: _pineText,
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            project[1],
            style: const TextStyle(
              color: _emeraldMid,
              fontSize: 11.5,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            project[3],
            style: const TextStyle(
              color: _mutedSlate,
              fontSize: 12.8,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceSection() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _cardWhite,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: _mintBorder),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vibe Solution | Founder & Lead Systems Developer',
                style: TextStyle(
                  color: _pineText,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Jan 2025-Present • vibesolution.tech',
                style: TextStyle(
                  color: _emeraldMid,
                  fontSize: 11.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '• Configured and maintained Linux cloud production environments (Ubuntu/Debian), managing DNS routing, SSL/TLS certificates, Nginx reverse proxy configurations, and Docker staging environments.\n'
                '• Integrated automated LLM workflows and conversational customer bots, cutting client inquiry response times by over 40%.\n'
                '• Engineered custom full-stack solutions with React, Next.js, Node.js, and Python, maintaining sub-second render performance and 99.9% uptime across production deployments.',
                style: TextStyle(
                  color: _mutedSlate,
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
            border: Border.all(color: _mintBorder),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bandarawela Sussex & Seevali Schools',
                style: TextStyle(
                  color: _pineText,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Strategic Chess Coach & Analytical Instructor • Jan 2024-Jan 2025',
                style: TextStyle(
                  color: _emeraldMid,
                  fontSize: 11.5,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Engineered systematic tactical training frameworks that boosted student qualification rates by 25% at provincial championships.',
                style: TextStyle(
                  color: _mutedSlate,
                  fontSize: 12.6,
                  height: 1.45,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEducationCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _mintBorder),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Institute of Technology, University of Moratuwa (ITUM) | NDT in Information Technology',
            style: TextStyle(
              color: _pineText,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'Expected 2026',
            style: TextStyle(
              color: _ochreAccent,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Coursework: Data Structures & Algorithms, DBMS, OOP, Computer Networks, Operating Systems, Software Engineering, Cloud Computing, Web & Mobile Development.',
            style: TextStyle(color: _mutedSlate, fontSize: 12.5, height: 1.45),
          ),
          Divider(height: 20, color: _mintBorder),
          Text(
            'Bandarawela Central College | G.C.E. Advanced Level - Physical Science (Mathematics)',
            style: TextStyle(
              color: _pineText,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'Concluded 2023 • Combined Mathematics (S), Physics (C), Chemistry (C)',
            style: TextStyle(color: _mutedSlate, fontSize: 12.5),
          ),
        ],
      ),
    );
  }

  Widget _buildCertificationsCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _mintBorder),
      ),
      child: const Text(
        '• AWS Certified Cloud Practitioner (CLF-C02): Learning path completed (Official Certification in progress)\n'
        '• Microsoft Certified: Azure Fundamentals (AZ-900): Microsoft Learn Curriculum completed (Official Certification in progress)\n'
        '• Python for Beginners: CODL, University of Moratuwa (ID: oKphzwlioe | Nov 2024)\n'
        '• Certified National Chess Instructor (Level 1): Chess Federation of Sri Lanka (CFSL | 2023)',
        style: TextStyle(color: _mutedSlate, fontSize: 12.6, height: 1.55),
      ),
    );
  }

  Widget _buildLeadershipCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _mintBorder),
      ),
      child: const Text(
        '• ZeroPlastic Movement & NDT Club (Voices Beyond Plastic 2026/27): Official Letters of Appreciation (Organizing Committee & Street Drama Crew).\n'
        '• Certificate of Participation - ZeroPlastic TRAIL 26: Recognized by Nishshanka de Silva for cleanup & sustainability initiatives.\n'
        '• School Board of Prefects (2019-2022): Bandarawela Central College — coordinated leadership, discipline & events across 1,000+ students.\n'
        '• Cadet Air Wing Boys Annual Assessment Camp (2018-2021): Survival, aerospace fundamentals, operational drills & leadership training.\n'
        '• Uva Provincial Chess Championship Team Member (2014-2022): Represented Bandarawela Central College at provincial & national levels.',
        style: TextStyle(color: _mutedSlate, fontSize: 12.6, height: 1.55),
      ),
    );
  }

  Widget _buildReferencesSection() {
    return Column(
      children: [
        _buildRefItem(
          name: 'Mrs. Uthpala Athukorala',
          role: 'Lecturer, Institute of Technology, University of Moratuwa',
          contact: '077 2666602  •  uthpalap@itum.mrt.ac.lk',
        ),
        const SizedBox(height: 10),
        _buildRefItem(
          name: 'Mrs. Tharukshi Adasuriya',
          role: 'Lecturer, Institute of Technology, University of Moratuwa',
          contact: '070 4524440  •  tharukshin@itum.mrt.ac.lk',
        ),
      ],
    );
  }

  Widget _buildRefItem({
    required String name,
    required String role,
    required String contact,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: _mintSoft,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _mintBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: _pineText,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 2),
          Text(role, style: const TextStyle(color: _mutedSlate, fontSize: 12)),
          const SizedBox(height: 6),
          Text(
            contact,
            style: const TextStyle(
              color: _emeraldMid,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _InfoButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
        decoration: BoxDecoration(
          color: const Color(0xFFF2F7F4),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFCFE2D9)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 15, color: const Color(0xFF1E6B62)),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFF163A36),
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

class _BadgeChip extends StatelessWidget {
  final String text;

  const _BadgeChip({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFE1EFE8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF163A36),
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
