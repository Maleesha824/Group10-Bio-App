import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RavinduBioScreen extends StatefulWidget {
  const RavinduBioScreen({super.key});

  @override
  State<RavinduBioScreen> createState() => _RavinduBioScreenState();
}

class _RavinduBioScreenState extends State<RavinduBioScreen> {
  // Navy blue, teal, and off-white portfolio colour palette
  static const Color _navyPrimary = Color(0xFF0B1F3A);
  static const Color _navySecondary = Color(0xFF143154);
  static const Color _tealAccent = Color(0xFF0D9488);
  static const Color _tealSoft = Color(0xFFE6F6F4);
  static const Color _offWhiteBg = Color(0xFFF5F7FA);
  static const Color _cardBorder = Color(0xFFE2E8F0);
  static const Color _textPrimary = Color(0xFF1E293B);
  static const Color _textSecondary = Color(0xFF475569);

  // State variables managed with setState()
  bool _isFavourite = false;
  final Set<int> _expandedProjectIndices = {0};

  static const List<String> _technicalSkills = [
    'Java',
    'PHP',
    'Python',
    'React',
    'HTML',
    'CSS',
    'MySQL',
    'Git',
    'GitHub',
    'Linux Fundamentals',
    'CI/CD Pipelines',
    'OOP',
    'System Architecture',
    'UI/UX Implementation',
  ];

  static const List<String> _softSkills = [
    'Teamwork',
    'Communication',
    'Problem-solving',
    'Time management',
    'Adaptability',
  ];

  static const List<_ProjectInfo> _projects = [
    _ProjectInfo(
      title: 'GuideLanka Mobile Application',
      subtitle: 'Mobile Architecture & Route Optimization',
      description:
          'System architecture and real-time safari route optimization for Yala National Park Block 5.',
      icon: Icons.route_outlined,
    ),
    _ProjectInfo(
      title: 'ERP Asset Management Registry',
      subtitle: 'Frontend & Agile Collaboration',
      description:
          'Frontend development and Git-based agile team collaboration.',
      icon: Icons.inventory_2_outlined,
    ),
    _ProjectInfo(
      title: 'Smart Health Monitoring System',
      subtitle: 'Personal Wellness Tracking',
      description:
          'BMI calculation, water intake tracking and step counting.',
      icon: Icons.favorite_outline_rounded,
    ),
    _ProjectInfo(
      title: 'Personal HCI Portfolio Website',
      subtitle: 'Responsive Web & Cloud Deployment',
      description:
          'Responsive portfolio website development and cloud deployment.',
      icon: Icons.language_outlined,
    ),
  ];

  static const List<_TalentItem> _talentsAndInterests = [
    _TalentItem(
      label: 'Singing and stage performances',
      icon: Icons.music_note_outlined,
    ),
    _TalentItem(
      label: 'Software development',
      icon: Icons.code_rounded,
    ),
    _TalentItem(
      label: 'Wildlife and safari technology',
      icon: Icons.explore_outlined,
    ),
    _TalentItem(
      label: 'DevOps and cloud technologies',
      icon: Icons.cloud_outlined,
    ),
  ];

  void _toggleFavourite() {
    setState(() {
      _isFavourite = !_isFavourite;
    });

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            _isFavourite
                ? 'Added Ravindu\'s profile to favourites'
                : 'Removed from favourites',
          ),
          duration: const Duration(seconds: 2),
          backgroundColor: _navyPrimary,
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  void _toggleProjectExpanded(int index) {
    setState(() {
      if (_expandedProjectIndices.contains(index)) {
        _expandedProjectIndices.remove(index);
      } else {
        _expandedProjectIndices.add(index);
      }
    });
  }

  void _toggleAllProjects() {
    setState(() {
      if (_expandedProjectIndices.length == _projects.length) {
        _expandedProjectIndices.clear();
      } else {
        _expandedProjectIndices.addAll(
          List.generate(_projects.length, (i) => i),
        );
      }
    });
  }

  Future<void> _copyToClipboard(String label, String value) async {
    await Clipboard.setData(ClipboardData(text: value));
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('$label copied to clipboard'),
          duration: const Duration(seconds: 2),
          backgroundColor: _tealAccent,
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final bool allExpanded =
        _expandedProjectIndices.length == _projects.length;

    return Theme(
      data: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: _offWhiteBg,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _tealAccent,
          primary: _navyPrimary,
          secondary: _tealAccent,
          surface: Colors.white,
        ),
      ),
      child: Scaffold(
        backgroundColor: _offWhiteBg,
        appBar: AppBar(
          backgroundColor: _navyPrimary,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '23IT0546 • Portfolio',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ),
              ),
              Text(
                'Group 10 • ITUM',
                style: TextStyle(
                  fontSize: 11.5,
                  color: Color(0xFF99F6E4),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                tooltip: _isFavourite
                    ? 'Remove from favourites'
                    : 'Mark as favourite',
                onPressed: _toggleFavourite,
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 220),
                  transitionBuilder: (child, animation) =>
                      ScaleTransition(scale: animation, child: child),
                  child: Icon(
                    _isFavourite ? Icons.favorite : Icons.favorite_border,
                    key: ValueKey<bool>(_isFavourite),
                    color: _isFavourite
                        ? const Color(0xFF5EEAD4)
                        : Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
              children: [
                _buildAnimatedEntry(
                  delayMs: 0,
                  child: _buildProfileHeader(),
                ),
                const SizedBox(height: 16),
                _buildAnimatedEntry(
                  delayMs: 80,
                  child: _buildSummaryCard(),
                ),
                const SizedBox(height: 16),
                _buildAnimatedEntry(
                  delayMs: 140,
                  child: _buildContactCard(),
                ),
                const SizedBox(height: 16),
                _buildAnimatedEntry(
                  delayMs: 200,
                  child: _buildEducationSection(),
                ),
                const SizedBox(height: 16),
                _buildCertificationsSection(),
                const SizedBox(height: 16),
                _buildSkillsSection(
                  title: 'Technical Skills',
                  icon: Icons.terminal_rounded,
                  skills: _technicalSkills,
                  isTechnical: true,
                ),
                const SizedBox(height: 16),
                _buildSkillsSection(
                  title: 'Soft Skills',
                  icon: Icons.groups_outlined,
                  skills: _softSkills,
                  isTechnical: false,
                ),
                const SizedBox(height: 16),
                _buildWorkExperienceSection(),
                const SizedBox(height: 16),
                _buildProjectsSection(allExpanded),
                const SizedBox(height: 16),
                _buildResearchSection(),
                const SizedBox(height: 16),
                _buildTalentsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedEntry({required int delayMs, required Widget child}) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 380 + delayMs),
      curve: Curves.easeOutCubic,
      builder: (context, value, widgetChild) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 14 * (1 - value)),
            child: widgetChild,
          ),
        );
      },
      child: child,
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [_navyPrimary, _navySecondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: _navyPrimary.withValues(alpha: 0.18),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: _tealAccent.withValues(alpha: 0.22),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFF5EEAD4).withValues(alpha: 0.45),
                  ),
                ),
                child: const Text(
                  'ID: 23IT0546  •  GROUP 10',
                  style: TextStyle(
                    color: Color(0xFF99F6E4),
                    fontSize: 11.5,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
              InkWell(
                onTap: _toggleFavourite,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: _isFavourite
                        ? _tealAccent
                        : Colors.white.withValues(alpha: 0.10),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: _isFavourite
                          ? const Color(0xFF5EEAD4)
                          : Colors.white24,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _isFavourite ? Icons.favorite : Icons.favorite_border,
                        size: 14,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        _isFavourite ? 'Favourited' : 'Favourite',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF2DD4BF), width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.28),
                  blurRadius: 16,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/Ravindu.jpg',
                width: 132,
                height: 132,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                errorBuilder: (_, _, _) => Container(
                  width: 132,
                  height: 132,
                  color: _navySecondary,
                  child: const Icon(
                    Icons.person,
                    size: 64,
                    color: Color(0xFF5EEAD4),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Ravindu Lakshan Weerasinghe',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.2,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'IT Undergraduate | Aspiring DevOps Engineer',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF5EEAD4),
              fontSize: 14.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 15,
                  color: Color(0xFFCBD5E1),
                ),
                SizedBox(width: 6),
                Text(
                  'Matara, Sri Lanka',
                  style: TextStyle(
                    color: Color(0xFFE2E8F0),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard() {
    return _PortfolioSectionCard(
      title: 'Professional Summary',
      icon: Icons.person_outline_rounded,
      child: Container(
        padding: const EdgeInsets.only(left: 12),
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(color: _tealAccent, width: 3),
          ),
        ),
        child: const Text(
          'IT undergraduate at the Institute of Technology, University of Moratuwa, '
          'with a foundation in full-stack development and hands-on experience building '
          'modern applications. Currently developing skills in DevOps, infrastructure, '
          'automation and system architecture.',
          style: TextStyle(
            color: _textSecondary,
            fontSize: 14,
            height: 1.55,
          ),
        ),
      ),
    );
  }

  Widget _buildContactCard() {
    return _PortfolioSectionCard(
      title: 'Contact & Profiles',
      icon: Icons.alternate_email_rounded,
      child: Column(
        children: [
          _buildContactRow(
            icon: Icons.location_on_outlined,
            label: 'Address',
            value: 'Matara, Sri Lanka',
          ),
          const Divider(height: 18, color: _cardBorder),
          _buildContactRow(
            icon: Icons.email_outlined,
            label: 'Email',
            value: 'ravinduweerasinghe5739422@gmail.com',
            copyable: true,
          ),
          const Divider(height: 18, color: _cardBorder),
          _buildContactRow(
            icon: Icons.code_rounded,
            label: 'GitHub',
            value: 'https://github.com/RAVINDUWEERASINGHE2002',
            copyable: true,
          ),
          const Divider(height: 18, color: _cardBorder),
          _buildContactRow(
            icon: Icons.work_outline_rounded,
            label: 'LinkedIn',
            value: 'https://linkedin.com/in/ravindu-weerasinghe',
            copyable: true,
          ),
        ],
      ),
    );
  }

  Widget _buildContactRow({
    required IconData icon,
    required String label,
    required String value,
    bool copyable = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: _tealSoft,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, size: 18, color: _tealAccent),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 11.5,
                  fontWeight: FontWeight.w600,
                  color: _textSecondary,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                  color: _textPrimary,
                ),
              ),
            ],
          ),
        ),
        if (copyable)
          IconButton(
            tooltip: 'Copy $label',
            onPressed: () => _copyToClipboard(label, value),
            icon: const Icon(
              Icons.copy_rounded,
              size: 17,
              color: _textSecondary,
            ),
            constraints: const BoxConstraints(minWidth: 34, minHeight: 34),
            padding: EdgeInsets.zero,
          ),
      ],
    );
  }

  Widget _buildEducationSection() {
    return const _PortfolioSectionCard(
      title: 'Education',
      icon: Icons.school_outlined,
      child: Column(
        children: [
          _TimelineItem(
            title: 'Higher National Diploma in Information Technology',
            institution: 'Institute of Technology, University of Moratuwa',
            period: '2025–2027',
            isFirst: true,
            isLast: false,
          ),
          _TimelineItem(
            title: 'St. Thomas College, Matara',
            institution: null,
            period: null,
            isFirst: false,
            isLast: true,
          ),
        ],
      ),
    );
  }

  Widget _buildCertificationsSection() {
    return _PortfolioSectionCard(
      title: 'Certifications & Training',
      icon: Icons.workspace_premium_outlined,
      child: Column(
        children: [
          _buildCertificationTile(
            title: 'DevOps Training Course',
            issuer: 'IDET',
            badge: 'Ongoing',
            isOngoing: true,
          ),
          const SizedBox(height: 10),
          _buildCertificationTile(
            title: 'AI/ML Engineer Stage 1 Certification',
            issuer: 'SLIIT',
            badge: '2026',
            isOngoing: false,
          ),
        ],
      ),
    );
  }

  Widget _buildCertificationTile({
    required String title,
    required String issuer,
    required String badge,
    required bool isOngoing,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: _offWhiteBg,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: _cardBorder),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: _navyPrimary.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.verified_outlined,
              size: 20,
              color: _navyPrimary,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: _textPrimary,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  issuer,
                  style: const TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w500,
                    color: _textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: isOngoing ? _tealSoft : _navyPrimary.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              badge,
              style: TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.w700,
                color: isOngoing ? _tealAccent : _navyPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsSection({
    required String title,
    required IconData icon,
    required List<String> skills,
    required bool isTechnical,
  }) {
    return _PortfolioSectionCard(
      title: title,
      icon: icon,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: skills.map((skill) {
          return Chip(
            avatar: Icon(
              isTechnical ? Icons.memory_rounded : Icons.check_circle_outline,
              size: 16,
              color: isTechnical ? _navyPrimary : _tealAccent,
            ),
            label: Text(
              skill,
              style: TextStyle(
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
                color: isTechnical ? _navyPrimary : _textPrimary,
              ),
            ),
            backgroundColor: isTechnical ? _offWhiteBg : _tealSoft,
            side: BorderSide(
              color: isTechnical
                  ? _cardBorder
                  : _tealAccent.withValues(alpha: 0.3),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildWorkExperienceSection() {
    const List<String> responsibilities = [
      'Technical arrangements for departmental meetings.',
      'Digital platform setup and troubleshooting.',
      'Customer data organization.',
      'Team collaboration and communication.',
    ];

    return _PortfolioSectionCard(
      title: 'Work Experience',
      icon: Icons.business_center_outlined,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: _offWhiteBg,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: _cardBorder),
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
                      const Text(
                        'Marketing Intern',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: _navyPrimary,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'Bank of Ceylon, Southern Province Office',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: _tealAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: _navyPrimary.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Mar 2024 – Aug 2024',
                    style: TextStyle(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w600,
                      color: _navyPrimary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ...responsibilities.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Icon(
                        Icons.circle,
                        size: 6,
                        color: _tealAccent,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 13.5,
                          color: _textSecondary,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectsSection(bool allExpanded) {
    return _PortfolioSectionCard(
      title: 'Selected Projects',
      icon: Icons.layers_outlined,
      trailing: TextButton(
        onPressed: _toggleAllProjects,
        style: TextButton.styleFrom(
          foregroundColor: _tealAccent,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          allExpanded ? 'Collapse all' : 'Expand all',
          style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w700),
        ),
      ),
      child: Column(
        children: List.generate(_projects.length, (index) {
          final project = _projects[index];
          final isExpanded = _expandedProjectIndices.contains(index);

          return Padding(
            padding: EdgeInsets.only(
              bottom: index == _projects.length - 1 ? 0 : 10,
            ),
            child: Material(
              color: isExpanded ? _tealSoft.withValues(alpha: 0.45) : _offWhiteBg,
              borderRadius: BorderRadius.circular(14),
              child: InkWell(
                borderRadius: BorderRadius.circular(14),
                onTap: () => _toggleProjectExpanded(index),
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: isExpanded
                          ? _tealAccent.withValues(alpha: 0.45)
                          : _cardBorder,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: isExpanded ? _tealAccent : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: isExpanded ? _tealAccent : _cardBorder,
                              ),
                            ),
                            child: Icon(
                              project.icon,
                              size: 18,
                              color: isExpanded ? Colors.white : _navyPrimary,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  project.title,
                                  style: const TextStyle(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w700,
                                    color: _textPrimary,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  project.subtitle,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: _tealAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AnimatedRotation(
                            turns: isExpanded ? 0.5 : 0,
                            duration: const Duration(milliseconds: 200),
                            child: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: _navyPrimary,
                            ),
                          ),
                        ],
                      ),
                      AnimatedCrossFade(
                        firstChild: const SizedBox.shrink(),
                        secondChild: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            project.description,
                            style: const TextStyle(
                              fontSize: 13.5,
                              color: _textSecondary,
                              height: 1.45,
                            ),
                          ),
                        ),
                        crossFadeState: isExpanded
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: const Duration(milliseconds: 220),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildResearchSection() {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [_navyPrimary, _navySecondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: _navyPrimary.withValues(alpha: 0.14),
            blurRadius: 14,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _tealAccent.withValues(alpha: 0.25),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.science_outlined,
                  color: Color(0xFF5EEAD4),
                  size: 20,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  'Research Achievement',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: _tealAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'SLAAI-ICAI 2026',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Text(
            'Presented Research Paper',
            style: TextStyle(
              color: Color(0xFF99F6E4),
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.4,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'A Multi-Criteria Sighting-to-Route Optimization Framework for '
            'Congestion-Aware Wildlife Safari Management.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.5,
              fontWeight: FontWeight.w600,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTalentsSection() {
    return _PortfolioSectionCard(
      title: 'Special Talents & Interests',
      icon: Icons.auto_awesome_outlined,
      child: Column(
        children: _talentsAndInterests.map((item) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: _tealSoft,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Icon(item.icon, size: 17, color: _tealAccent),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    item.label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: _textPrimary,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _PortfolioSectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;
  final Widget? trailing;

  const _PortfolioSectionCard({
    required this.title,
    required this.icon,
    required this.child,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: const BorderSide(color: Color(0xFFE2E8F0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: const Color(0xFF0B1F3A).withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    icon,
                    size: 19,
                    color: const Color(0xFF0B1F3A),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16.5,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0B1F3A),
                    ),
                  ),
                ),
                ?trailing,
              ],
            ),
            const SizedBox(height: 14),
            child,
          ],
        ),
      ),
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final String title;
  final String? institution;
  final String? period;
  final bool isFirst;
  final bool isLast;

  const _TimelineItem({
    required this.title,
    this.institution,
    this.period,
    required this.isFirst,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 24,
            child: Column(
              children: [
                Container(
                  width: 2,
                  height: 6,
                  color: isFirst ? Colors.transparent : const Color(0xFFCBD5E1),
                ),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: isFirst
                        ? const Color(0xFF0D9488)
                        : const Color(0xFF0B1F3A),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFCCFBF1),
                      width: 2.5,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 2,
                    color: isLast
                        ? Colors.transparent
                        : const Color(0xFFCBD5E1),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (period != null)
                    Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6F6F4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        period!,
                        style: const TextStyle(
                          fontSize: 11.5,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0D9488),
                        ),
                      ),
                    ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14.5,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                  if (institution != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      institution!,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF475569),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectInfo {
  final String title;
  final String subtitle;
  final String description;
  final IconData icon;

  const _ProjectInfo({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.icon,
  });
}

class _TalentItem {
  final String label;
  final IconData icon;

  const _TalentItem({
    required this.label,
    required this.icon,
  });
}
