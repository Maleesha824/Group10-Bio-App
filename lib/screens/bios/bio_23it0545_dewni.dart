import 'package:flutter/material.dart';

class Bio23IT0545DewniScreen extends StatefulWidget {
  const Bio23IT0545DewniScreen({super.key});

  @override
  State<Bio23IT0545DewniScreen> createState() => _Bio23IT0545DewniScreenState();
}

class _Bio23IT0545DewniScreenState extends State<Bio23IT0545DewniScreen> {
  static const Color _bgCream = Color(0xFFFAF7F2);
  static const Color _cardSurface = Color(0xFFFFFFFF);
  static const Color _inkPrimary = Color(0xFF1E1B18);
  static const Color _inkSecondary = Color(0xFF635B52);
  static const Color _terracotta = Color(0xFFD95D39);
  static const Color _sage = Color(0xFF2A6F68);
  static const Color _sandBorder = Color(0xFFE8E0D5);
  static const Color _pillBg = Color(0xFFF3ECE1);

  int _selectedSkillTab = 0;

  final List<String> _skillTabs = [
    'UI/UX Design',
    'Design Tools',
    'Frontend Dev',
    'Soft Skills',
  ];

  final List<IconData> _skillIcons = [
    Icons.auto_awesome_mosaic_outlined,
    Icons.brush_outlined,
    Icons.code_rounded,
    Icons.psychology_outlined,
  ];

  final List<List<String>> _skillsByTab = [
    [
      'Wireframing',
      'Prototyping',
      'UI Design',
      'UX Design',
      'User Flow',
      'Responsive Design',
      'Typography',
      'Color Theory',
    ],
    ['Figma', 'Canva', 'Adobe Illustrator', 'Miro'],
    ['HTML', 'CSS', 'JavaScript', 'React', 'Vite', 'Git', 'GitHub'],
    [
      'Creativity',
      'Communication',
      'Problem Solving',
      'Teamwork',
      'Time Management',
      'Adaptability',
    ],
  ];

  final List<List<String>> _projects = [
    [
      'University Canteen Food Ordering App',
      'Individual UI/UX Project • Figma',
      'Behance Case Study',
      'Conducted a complete UI/UX case study and designed a mobile app prototype using Figma for browsing food, pre-ordering meals, and managing budgets.',
    ],
    [
      'University Event Management System',
      'Individual UI/UX Project • Figma',
      'Figma Prototype',
      'Designed a web interface using Figma, allowing students to explore university events, view event details, and join events seamlessly.',
    ],
    [
      'ChildGuard – Smart Child Safety & Transport',
      'Group Project • Frontend Developer',
      'React & Vite',
      'Developed a React and Vite admin dashboard featuring child management, alerts, transport monitoring, device management, and safety zones.',
    ],
    [
      'Personal Portfolio Website',
      'Personal Branding • Web Design',
      'Portfolio',
      'Designed and created a personal portfolio website using Canva to showcase UI/UX design projects, technical skills, educational background, and profile.',
    ],
  ];

  final List<List<String>> _certifications = [
    ['Introduction to Figma', 'Simplilearn • October 2026'],
    ['UI/UX for Beginners', 'Simplilearn • October 2026'],
    ['Design Thinking for Beginners', 'Simplilearn • October 2026'],
    [
      'Pivoting Your Career to User Experience',
      'LinkedIn Learning • October 2026',
    ],
    ['Web Design for Beginners', 'University of Moratuwa (CODL)'],
  ];

  void _showContactSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: _inkPrimary,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgCream,
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
                    borderRadius: BorderRadius.circular(14),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: _cardSurface,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: _sandBorder),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16,
                        color: _inkPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _buildEditorialHeroCard(),
              const SizedBox(height: 18),
              _buildContactBentoRow(),
              const SizedBox(height: 22),
              _buildSectionHeading('01', 'About & Design Philosophy'),
              const SizedBox(height: 10),
              _buildSummaryCard(),
              const SizedBox(height: 24),
              _buildSectionHeading('02', 'Creative & Technical Toolkit'),
              const SizedBox(height: 12),
              _buildInteractiveSkillsSection(),
              const SizedBox(height: 24),
              _buildSectionHeading('03', 'Selected Case Studies & Builds'),
              const SizedBox(height: 12),
              for (final project in _projects) _buildProjectTile(project),
              const SizedBox(height: 22),
              _buildSectionHeading('04', 'Academic & Industry Journey'),
              const SizedBox(height: 12),
              _buildEducationAndWorkSection(),
              const SizedBox(height: 24),
              _buildSectionHeading('05', 'Certifications'),
              const SizedBox(height: 12),
              _buildCertificationsCard(),
              const SizedBox(height: 24),
              _buildSectionHeading('06', 'Academic Referees'),
              const SizedBox(height: 12),
              _buildReferencesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEditorialHeroCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: _inkPrimary,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: _inkPrimary.withValues(alpha: 0.14),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: _terracotta, width: 2.5),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/Dewni.jpeg',
                    width: 72,
                    height: 72,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) => Container(
                      width: 72,
                      height: 72,
                      color: const Color(0xFF2E2924),
                      alignment: Alignment.center,
                      child: const Text(
                        'DC',
                        style: TextStyle(
                          color: _bgCream,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
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
                        color: _terracotta.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: _terracotta.withValues(alpha: 0.5),
                        ),
                      ),
                      child: const Text(
                        'UI/UX DESIGNER',
                        style: TextStyle(
                          color: Color(0xFFFF9B7D),
                          fontSize: 10.5,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Dewni Chamathka',
                      style: TextStyle(
                        color: _bgCream,
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        height: 1.15,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'IT Undergraduate • ITUM (23IT0545)',
                      style: TextStyle(
                        color: _bgCream.withValues(alpha: 0.72),
                        fontSize: 12.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.06),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildHeroStat('3.37', 'Current GPA'),
                Container(
                  height: 26,
                  width: 1,
                  color: Colors.white.withValues(alpha: 0.15),
                ),
                _buildHeroStat('4+', 'UX & Web Builds'),
                Container(
                  height: 26,
                  width: 1,
                  color: Colors.white.withValues(alpha: 0.15),
                ),
                _buildHeroStat('5', 'Certifications'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroStat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Color(0xFFFF9B7D),
            fontSize: 17,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            color: _bgCream.withValues(alpha: 0.7),
            fontSize: 11,
          ),
        ),
      ],
    );
  }

  Widget _buildContactBentoRow() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildActionChip(
                icon: Icons.call_outlined,
                label: '+94 74 047 5733',
                accent: _sage,
                onTap: () => _showContactSnackBar('Phone: +94 74 047 5733'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _buildActionChip(
                icon: Icons.mail_outline_rounded,
                label: 'dewnichamathka952@gmail.com',
                accent: _terracotta,
                onTap: () =>
                    _showContactSnackBar('Email: dewnichamathka952@gmail.com'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          decoration: BoxDecoration(
            color: _cardSurface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: _sandBorder),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _SocialBadge(label: 'Portfolio', icon: Icons.language_rounded),
              _SocialBadge(label: 'LinkedIn', icon: Icons.work_outline_rounded),
              _SocialBadge(label: 'Behance', icon: Icons.palette_outlined),
              _SocialBadge(label: 'GitHub', icon: Icons.terminal_rounded),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionChip({
    required IconData icon,
    required String label,
    required Color accent,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
        decoration: BoxDecoration(
          color: _cardSurface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: _sandBorder),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 17, color: accent),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: _inkPrimary,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeading(String index, String title) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: _terracotta,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            index,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            color: _inkPrimary,
            fontSize: 17,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.2,
          ),
        ),
      ],
    );
  }

  Widget _buildSummaryCard() {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: _cardSurface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: _sandBorder),
      ),
      child: const Text(
        'UI/UX Designer and IT undergraduate at the Institute of Technology, University of Moratuwa (ITUM), passionate about creating intuitive, user-friendly, and visually appealing digital experiences. Familiar with UI design, wireframing, prototyping, and user-centered design using Figma and Canva, combined with frontend web development knowledge to craft meaningful digital solutions.',
        style: TextStyle(color: _inkSecondary, fontSize: 13.5, height: 1.55),
      ),
    );
  }

  Widget _buildInteractiveSkillsSection() {
    final currentSkills = _skillsByTab[_selectedSkillTab];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardSurface,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: _sandBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(_skillTabs.length, (index) {
                final isSelected = _selectedSkillTab == index;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedSkillTab = index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected ? _sage : _pillBg,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            _skillIcons[index],
                            size: 15,
                            color: isSelected ? Colors.white : _inkPrimary,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            _skillTabs[index],
                            style: TextStyle(
                              color: isSelected ? Colors.white : _inkPrimary,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final skill in currentSkills)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    color: _bgCream,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: _sandBorder),
                  ),
                  child: Text(
                    skill,
                    style: const TextStyle(
                      color: _inkPrimary,
                      fontSize: 12.5,
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

  Widget _buildProjectTile(List<String> project) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: _cardSurface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: _sandBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  project[1],
                  style: const TextStyle(
                    color: _sage,
                    fontSize: 11.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                decoration: BoxDecoration(
                  color: _terracotta.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  project[2],
                  style: const TextStyle(
                    color: _terracotta,
                    fontSize: 10.5,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            project[0],
            style: const TextStyle(
              color: _inkPrimary,
              fontSize: 15.5,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            project[3],
            style: const TextStyle(
              color: _inkSecondary,
              fontSize: 13,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationAndWorkSection() {
    return Column(
      children: [
        _buildTimelineCard(
          badge: '2025 – Present • GPA: 3.37',
          title: 'National Diploma in Technology (NDT) in IT',
          subtitle: 'Institute of Technology, University of Moratuwa (ITUM)',
          accent: _terracotta,
        ),
        const SizedBox(height: 10),
        _buildTimelineCard(
          badge: 'Diploma',
          title: 'Diploma in Information Technology',
          subtitle: 'Esoft Metro Campus, Galle',
          accent: _sage,
        ),
        const SizedBox(height: 10),
        _buildTimelineCard(
          badge: 'Work Experience • Mar 2022 – Present',
          title: 'Banking Trainee',
          subtitle: "People's Bank, Weligama Branch — Assisted customers with passbook updates, cheque handling, balance inquiries, and customer calls.",
          accent: _inkPrimary,
        ),
      ],
    );
  }

  Widget _buildTimelineCard({
    required String badge,
    required String title,
    required String subtitle,
    required Color accent,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardSurface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _sandBorder),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 4,
            height: 54,
            decoration: BoxDecoration(
              color: accent,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  badge,
                  style: TextStyle(
                    color: accent,
                    fontSize: 11.5,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: const TextStyle(
                    color: _inkPrimary,
                    fontSize: 14.5,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: _inkSecondary,
                    fontSize: 12.5,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCertificationsCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardSurface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: _sandBorder),
      ),
      child: Column(
        children: [
          for (final cert in _certifications)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.verified_outlined, size: 18, color: _sage),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cert[0],
                          style: const TextStyle(
                            color: _inkPrimary,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          cert[1],
                          style: const TextStyle(
                            color: _inkSecondary,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildReferencesSection() {
    return Column(
      children: [
        _buildRefereeCard(
          name: 'Mrs. Tharukshi Adasooriya',
          role: 'Institute of Technology, University of Moratuwa',
          phone: '+94 77 190 2981',
          email: 'tharukshin@itum.mrt.ac.lk',
        ),
        const SizedBox(height: 10),
        _buildRefereeCard(
          name: 'Mrs. D.A.S. Ruwanmini',
          role: 'Lecturer, Division of Information Technology, ITUM',
          phone: '+94 77 855 8303',
          email: 'ruwanminis@itum.mrt.ac.lk',
        ),
      ],
    );
  }

  Widget _buildRefereeCard({
    required String name,
    required String role,
    required String phone,
    required String email,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _pillBg,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _sandBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: _inkPrimary,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            role,
            style: const TextStyle(color: _inkSecondary, fontSize: 12),
          ),
          const SizedBox(height: 8),
          Text(
            '$phone  •  $email',
            style: const TextStyle(
              color: _sage,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialBadge extends StatelessWidget {
  final String label;
  final IconData icon;

  const _SocialBadge({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: const Color(0xFFD95D39)),
        const SizedBox(width: 4),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF1E1B18),
            fontSize: 11.5,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
