import 'package:flutter/material.dart';

class Bio23IT0548Screen extends StatefulWidget {
  const Bio23IT0548Screen({super.key});

  @override
  State<Bio23IT0548Screen> createState() => _Bio23IT0548ScreenState();
}

class _Bio23IT0548ScreenState extends State<Bio23IT0548Screen> {
  bool _isFavourite = false;

  final _qualifications = [
    'National Diploma in Information Technology – Institute of Technology, University of Moratuwa (GPA: 3.01, Jan 2025 – Present)',
    'Relevant Coursework: OOP, Management Systems, Software Engineering, Web Development, Computer Networks, Operating Systems, Information Security, Machine Learning',
    'Python for Beginners – University of Moratuwa (Sep 2026 – Present)',
    'Machine Learning using Python – Simplilearn (Aug 2026)',
    'C++ – Cisco Networking Academy (Mar 2025)',
  ];

  final _softSkills = [
    'Problem Solving',
    'Teamwork',
    'Communication',
    'Time Management',
    'Quick Learning',
    'Adaptability',
  ];

  final _projects = [
    {
      'title': 'MChat – Real-Time Chat Mobile Application (Nov 2026)',
      'subtitle': 'Flutter, Dart, Firebase – Profile customization, gallery photo sharing, direct messaging, live message monitoring & local popup notifications.',
    },
    {
      'title': 'Medical Record Management App (Aug 2026 – Sep 2026)',
      'subtitle': 'Flutter – Recording and organizing personal medical records, diagnoses, medicines, and clinic visits.',
    },
    {
      'title': 'Smart Municipal Council Management System – Group (Jan 2026 – Present)',
      'subtitle': 'React, Spring Boot, PostgreSQL – Municipal council services, online applications, RESTful APIs & payment management.',
    },
    {
      'title': 'Phone Shop Management System (Jan 2026 – Present)',
      'subtitle': 'React, Spring Boot, PostgreSQL – POS system for sales, products, customers, and business transactions.',
    },
    {
      'title': 'Online Food Ordering System – Group (Aug 2026)',
      'subtitle': 'HTML, CSS, JavaScript, MySQL – Responsive web application for browsing items, orders, and customer data.',
    },
    {
      'title': 'Event Management System (Nov 2025)',
      'subtitle': 'HTML, CSS, JavaScript, PHP, MySQL – Web application for managing student events and event details.',
    },
  ];

  final _highlights = [
    'Mobile App Development (Flutter, Dart, Firebase Firestore)',
    'Full-Stack & Web Development (Java, Spring Boot, React, Python, JavaScript, PHP, MySQL, PostgreSQL)',
    'Tools & Cloud: Git, GitHub, Figma, Microsoft Azure, RESTful APIs • Languages: Sinhala (Native), English',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090C10),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D131A),
        title: const Text('23IT0548 • Bio Profile'),
        actions: [
          IconButton(
            tooltip: 'Favourite Profile',
            icon: Icon(
              _isFavourite ? Icons.favorite : Icons.favorite_border,
              color: _isFavourite ? Colors.cyanAccent : Colors.white70,
            ),
            onPressed: () {
              setState(() {
                _isFavourite = !_isFavourite;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF0E2430), Color(0xFF11161F)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.cyanAccent.withValues(alpha: 0.4),
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 52,
                    backgroundColor: Colors.cyanAccent.withValues(alpha: 0.2),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Maleesha.jpeg',
                        width: 98,
                        height: 98,
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) => const Icon(
                          Icons.person,
                          size: 54,
                          color: Colors.cyanAccent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'W.A.M.S. Wickramaarachchi',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Intern Mobile Development Engineer',
                    style: TextStyle(color: Colors.cyanAccent),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '105/3, Vithanage vatta, Weniwelkola, Polgasovita',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'maleeshasewmini824@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white60, fontSize: 13),
                  ),
                  const Text(
                    '+94 77 284 9249',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white60, fontSize: 13),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _SectionCard(
              title: 'Academic Qualifications & Certifications',
              icon: Icons.school_outlined,
              children: _qualifications
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '• ',
                            style: TextStyle(color: Colors.cyanAccent),
                          ),
                          Expanded(child: Text(item)),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 16),
            _SectionCard(
              title: 'Soft Skills',
              icon: Icons.psychology_outlined,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: _softSkills
                      .map(
                        (skill) => Chip(
                          label: Text(skill),
                          backgroundColor: const Color(0xFF14222B),
                          side: BorderSide(
                            color: Colors.cyanAccent.withValues(alpha: 0.35),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _SectionCard(
              title: 'Projects & Experience',
              icon: Icons.work_outline,
              children: _projects
                  .map(
                    (proj) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '▸ ${proj['title']!}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.cyanAccent,
                              fontSize: 13.5,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            proj['subtitle']!,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12.5,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 16),
            _SectionCard(
              title: 'Special Talents & Key Strengths',
              icon: Icons.auto_awesome_outlined,
              children: _highlights
                  .map(
                    (h) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '▸ ',
                            style: TextStyle(color: Colors.cyanAccent),
                          ),
                          Expanded(child: Text(h)),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const _SectionCard({
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF11161F),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.cyanAccent, size: 20),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...children,
        ],
      ),
    );
  }
}
