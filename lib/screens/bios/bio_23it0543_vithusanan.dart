import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Bio23IT0543VithusananScreen extends StatelessWidget {
  const Bio23IT0543VithusananScreen({super.key});

  // Simple Minimalist Warm Paper & Deep Indigo Palette
  static const Color _paperBg = Color(0xFFFAF9F6);
  static const Color _surfaceWhite = Color(0xFFFFFFFF);
  static const Color _indigoDark = Color(0xFF1E1B4B);
  static const Color _cobaltAccent = Color(0xFF4338CA);
  static const Color _cobaltSoft = Color(0xFFEEF2FF);
  static const Color _slateBody = Color(0xFF475569);
  static const Color _borderLine = Color(0xFFE5E7EB);

  static const List<String> _skills = [
    'Java & Spring Boot',
    'React & JavaScript',
    'HTML & CSS',
    'MySQL & Database Management',
    'Git & GitHub',
    'Problem Solving & Teamwork',
    'MS Office & 3D Animation (Blender)',
    'English & Tamil Typing',
  ];

  static const List<String> _projects = [
    'Student Event Management System',
    'Student Registration System',
    'Order & Billing Management System',
    'Personal Portfolio Website',
  ];

  void _copyText(BuildContext context, String label, String value) {
    Clipboard.setData(ClipboardData(text: value));
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('$label copied'),
          backgroundColor: _indigoDark,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 2),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _paperBg,
      appBar: AppBar(
        backgroundColor: _paperBg,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: _indigoDark,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          '23IT0543 • Profile',
          style: TextStyle(
            color: _indigoDark,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSimpleHeader(),
                const SizedBox(height: 20),
                _buildContactStrip(context),
                const SizedBox(height: 24),
                _buildSectionLabel('OBJECTIVE'),
                const SizedBox(height: 8),
                _buildObjectiveBlock(),
                const SizedBox(height: 24),
                _buildSectionLabel('EDUCATION'),
                const SizedBox(height: 8),
                _buildEducationBlock(),
                const SizedBox(height: 24),
                _buildSectionLabel('SKILLS'),
                const SizedBox(height: 10),
                _buildSkillsWrap(),
                const SizedBox(height: 24),
                _buildSectionLabel('PROJECTS'),
                const SizedBox(height: 8),
                _buildProjectsBlock(),
                const SizedBox(height: 24),
                _buildSectionLabel('CERTIFICATIONS & QUALIFICATIONS'),
                const SizedBox(height: 8),
                _buildCertificationsBlock(),
                const SizedBox(height: 24),
                _buildSectionLabel('REFERENCES'),
                const SizedBox(height: 8),
                _buildReferenceBlock(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSimpleHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      decoration: BoxDecoration(
        color: _surfaceWhite,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: _borderLine),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(
              'assets/images/Vithusanan.jpg',
              width: 96,
              height: 96,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              errorBuilder: (_, _, _) => Container(
                width: 96,
                height: 96,
                color: _cobaltSoft,
                alignment: Alignment.center,
                child: const Text(
                  'TV',
                  style: TextStyle(
                    color: _cobaltAccent,
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'THEVARASA VITHUSANAN',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _indigoDark,
              fontSize: 19,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.4,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'IT UNDERGRADUATE / INTERN',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _cobaltAccent,
              fontSize: 12.5,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Cheddipalayam, Batticaloa',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _slateBody,
              fontSize: 12.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactStrip(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: _surfaceWhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _borderLine),
      ),
      child: Column(
        children: [
          _buildSimpleContactLine(
            context,
            icon: Icons.mail_outline_rounded,
            text: 'Thevvithusanan2000@gmail.com',
            label: 'Email',
          ),
          const Divider(height: 16, color: _borderLine),
          _buildSimpleContactLine(
            context,
            icon: Icons.phone_outlined,
            text: '0754554288',
            label: 'Phone',
          ),
          const Divider(height: 16, color: _borderLine),
          _buildSimpleContactLine(
            context,
            icon: Icons.link_rounded,
            text: 'LinkedIn • Thevarasa Vithusanan',
            label: 'LinkedIn',
          ),
        ],
      ),
    );
  }

  Widget _buildSimpleContactLine(
    BuildContext context, {
    required IconData icon,
    required String text,
    required String label,
  }) {
    return InkWell(
      onTap: () => _copyText(context, label, text),
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Row(
          children: [
            Icon(icon, size: 17, color: _cobaltAccent),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  color: _indigoDark,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Icon(
              Icons.copy_rounded,
              size: 14,
              color: _slateBody,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionLabel(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: _cobaltAccent,
        fontSize: 12,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.1,
      ),
    );
  }

  Widget _buildObjectiveBlock() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _surfaceWhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _borderLine),
      ),
      child: const Text(
        'Motivated undergraduate with an interest in Information Technology and software development, with knowledge of MS Office, basic coding, English and Tamil typing, and 3D animation using Blender. Experienced in teaching and clerical work, with strong communication, organizational, and teamwork skills. Eager to gain industry experience, develop technical skills, and contribute effectively to a professional organization.',
        style: TextStyle(
          color: _slateBody,
          fontSize: 13.2,
          height: 1.55,
        ),
      ),
    );
  }

  Widget _buildEducationBlock() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _surfaceWhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _borderLine),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Information Technology',
            style: TextStyle(
              color: _indigoDark,
              fontSize: 14.5,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'Institute of Technology, University of Moratuwa',
            style: TextStyle(
              color: _slateBody,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 4),
          Text(
            '2025 – 2027',
            style: TextStyle(
              color: _cobaltAccent,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          Divider(height: 22, color: _borderLine),
          Text(
            'BT/Paddiruppu National School',
            style: TextStyle(
              color: _indigoDark,
              fontSize: 14.5,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4),
          Text(
            '2017 – 2020',
            style: TextStyle(
              color: _cobaltAccent,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsWrap() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _skills.map((skill) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          decoration: BoxDecoration(
            color: _surfaceWhite,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: _borderLine),
          ),
          child: Text(
            skill,
            style: const TextStyle(
              color: _indigoDark,
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildProjectsBlock() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _surfaceWhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _borderLine),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < _projects.length; i++) ...[
            Row(
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: _cobaltAccent,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    _projects[i],
                    style: const TextStyle(
                      color: _indigoDark,
                      fontSize: 13.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            if (i < _projects.length - 1) const SizedBox(height: 8),
          ],
          const Divider(height: 22, color: _borderLine),
          const Text(
            'Gained practical experience in React, Java, Spring Boot, MySQL, JavaScript, HTML, and CSS, along with system design, database management, and responsive web development.',
            style: TextStyle(
              color: _slateBody,
              fontSize: 12.8,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCertificationsBlock() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _surfaceWhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _borderLine),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Web Design for Beginners',
            style: TextStyle(
              color: _indigoDark,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'University of Moratuwa • 2025',
            style: TextStyle(
              color: _slateBody,
              fontSize: 12.5,
            ),
          ),
          Divider(height: 20, color: _borderLine),
          Text(
            'Python for Beginners',
            style: TextStyle(
              color: _indigoDark,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'University of Moratuwa • 2025',
            style: TextStyle(
              color: _slateBody,
              fontSize: 12.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferenceBlock(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cobaltSoft,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Dinath (MBBS)',
                  style: TextStyle(
                    color: _indigoDark,
                    fontSize: 14.5,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'GV Hospital, Batticaloa',
                  style: TextStyle(
                    color: _slateBody,
                    fontSize: 12.5,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '0757241062',
                  style: TextStyle(
                    color: _cobaltAccent,
                    fontSize: 12.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => _copyText(context, 'Reference phone', '0757241062'),
            icon: const Icon(Icons.copy_rounded, size: 18, color: _cobaltAccent),
          ),
        ],
      ),
    );
  }
}