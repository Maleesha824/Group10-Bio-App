import 'package:flutter/material.dart';

class Bio23IT0547HasidhaScreen extends StatefulWidget {
  const Bio23IT0547HasidhaScreen({super.key});

  @override
  State<Bio23IT0547HasidhaScreen> createState() =>
      _Bio23IT0547HasidhaScreenState();
}

class _Bio23IT0547HasidhaScreenState extends State<Bio23IT0547HasidhaScreen> {
  // Obsidian & Copper/Gold Dark Palette
  static const Color _obsidianBg = Color(0xFF09090B);
  static const Color _zincCard = Color(0xFF18181B);
  static const Color _zincElevated = Color(0xFF27272A);
  static const Color _zincBorder = Color(0xFF3F3F46);
  static const Color _ivoryText = Color(0xFFFAFAFA);
  static const Color _mutedText = Color(0xFFA1A1AA);
  static const Color _copperAccent = Color(0xFFF59E0B);
  static const Color _goldSoft = Color(0xFFFDE68A);

  int _selectedSkillTab = 0;

  final List<String> _skillTabs = [
    'Networking & Support',
    'OS & Tools',
    'Dev & DB',
    'Soft Skills',
  ];

  final List<List<String>> _skillsByTab = [
    [
      'Connectivity & Cable Fault Diagnosis',
      'Router & Switch Setup',
      'LAN/Ethernet Cabling (Cat5e/Cat6)',
      'TCP/IP',
      'OSI Model',
      'IPv4/IPv6 Subnetting',
      'DHCP',
      'DNS',
      'NAT',
      'VPN',
      'VLANS',
      'ACLS',
    ],
    [
      'Windows Server',
      'macOS',
      'Cisco Packet Tracer',
      'Netmiko',
      'Git & GitHub',
    ],
    ['Python', 'JavaScript', 'TypeScript', 'React', 'HTML/CSS', 'PHP', 'MySQL'],
    [
      'Problem-solving (IP conflicts to DNS failures)',
      'Communication & Teamwork (Final-year team lead)',
      'Self-learning & Time Management',
      'Customer Service Mindset',
    ],
  ];

  final List<List<String>> _projects = [
    [
      'Enterprise Network Simulation (GlobalTech)',
      'Cisco Packet Tracer',
      'Designed a multi-site hierarchical network with dynamic routing.',
    ],
    [
      'Enterprise LAN/WLAN Design & Subnetting Simulator',
      'TypeScript',
      'Interactive campus topology simulator with a VLSM subnetting engine and a Wi-Fi RF heatmap.',
    ],
    [
      'Network Packet & Protocol Analysis Lab',
      'Wireshark',
      'Analyzed live traffic (TCP handshakes, DNS, ARP); identified broadcast storms and high-latency packets.',
    ],
    [
      'NetAuto - Network Automation Toolkit',
      'Python, Netmiko, Jinja2',
      'Built a multi-vendor (Cisco, Arista, Juniper) toolkit for config generation, backups and rollback playbooks.',
    ],
    [
      'CGO - IoT Container Monitoring & Anti-Theft (Sri Lanka Customs)',
      'JavaScript, Flutter, Firebase',
      'Real-time container monitoring system with a mobile app using retry logic and offline caching.',
    ],
    [
      'Bus Tracking System & Network Telemetry',
      'Python Sockets, TCP/IP',
      'Developed a client-server telemetry system; analyzed latency, packet loss and timeouts over wireless links.',
    ],
    [
      'Al Flashcard & Quiz Generator',
      'React, JavaScript',
      'Web app that generates Al flashcards and timed quizzes from study material, with progress tracking.',
    ],
    [
      'THE-SUN - Solar Operations Dashboard',
      'TypeScript, Python',
      'Five-site solar monitoring dashboard with a Python power-flow simulation (pandapower).',
    ],
    [
      'Student Event Management System',
      'HTML',
      'Web-based system for managing student events.',
    ],
  ];

  void _showSnack(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: _zincElevated,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _obsidianBg,
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
                        color: _zincCard,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: _zincBorder),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16,
                        color: _ivoryText,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _buildHeroHeader(),
              const SizedBox(height: 12),
              _buildContactAndLinks(),
              const SizedBox(height: 22),
              _buildHeading('PROFILE'),
              const SizedBox(height: 8),
              _buildProfileBox(),
              const SizedBox(height: 22),
              _buildHeading('EDUCATION & LEADERSHIP'),
              const SizedBox(height: 8),
              _buildEducationAndLeadership(),
              const SizedBox(height: 22),
              _buildHeading('SKILLS'),
              const SizedBox(height: 8),
              _buildSkillsPanel(),
              const SizedBox(height: 22),
              _buildHeading('PROJECTS'),
              const SizedBox(height: 8),
              for (int i = 0; i < _projects.length; i++)
                _buildProjectRow(i + 1, _projects[i]),
              const SizedBox(height: 14),
              _buildHeading('REFERENCES'),
              const SizedBox(height: 8),
              _buildReferences(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: _zincCard,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: _zincBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/Hasidha.jpeg',
                  width: 72,
                  height: 72,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => Container(
                    width: 72,
                    height: 72,
                    color: _zincElevated,
                    alignment: Alignment.center,
                    child: const Text(
                      'HW',
                      style: TextStyle(
                        color: _copperAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'W.A.D.H.D. WICKRAMAARACHCHI',
                      style: TextStyle(
                        color: _ivoryText,
                        fontSize: 16.5,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.3,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'IT Undergraduate | IT Support Engineer Intern Applicant',
                      style: TextStyle(
                        color: _copperAccent,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      'Sri Lanka',
                      style: TextStyle(color: _mutedText, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              color: _obsidianBg,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _StatCell(value: '2nd Year', label: 'NDT • ITUM'),
                _StatCell(value: '9 Projects', label: 'Net, IoT & Web'),
                _StatCell(value: 'Team Lead', label: 'Secure Track SL'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactAndLinks() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: _zincCard,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: _zincBorder),
          ),
          child: Column(
            children: [
              _ContactListTile(
                icon: Icons.phone_in_talk_outlined,
                title: 'Phone Number',
                value: '+94 771265617',
                onTap: () => _showSnack('Phone: +94 771265617'),
              ),
              const Divider(height: 1, color: _zincBorder),
              _ContactListTile(
                icon: Icons.mark_email_unread_outlined,
                title: 'Email Address',
                value: 'hasidhananjaya121212@gmail.com',
                onTap: () =>
                    _showSnack('Email: hasidhananjaya121212@gmail.com'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: _ProfileLinkCard(
                icon: Icons.work_outline_rounded,
                label: 'LinkedIn',
                onTap: () => _showSnack('LinkedIn profile'),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _ProfileLinkCard(
                icon: Icons.code_rounded,
                label: 'GitHub',
                onTap: () => _showSnack('GitHub profile'),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _ProfileLinkCard(
                icon: Icons.language_rounded,
                label: 'Portfolio',
                onTap: () => _showSnack('Portfolio website'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildHeading(String title) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 16,
          decoration: BoxDecoration(
            color: _copperAccent,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            color: _goldSoft,
            fontSize: 13,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileBox() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _zincCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _zincBorder),
      ),
      child: const Text(
        '2nd-year IT undergraduate at the Institute of Technology, University of Moratuwa (ITUM), seeking an IT Support Engineer Intern role. I have hands-on experience troubleshooting network and connectivity issues and working with Windows systems, with knowledge of TCP/IP, DHCP, DNS and Active Directory basics. My projects include enterprise network simulations in Cisco Packet Tracer, a Python network automation toolkit, and web and mobile applications. I am a quick learner with strong problem-solving, communication and teamwork skills, and I want to provide reliable technical support.',
        style: TextStyle(color: _mutedText, fontSize: 13, height: 1.55),
      ),
    );
  }

  Widget _buildEducationAndLeadership() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _zincCard,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: _zincBorder),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Present',
                style: TextStyle(
                  color: _copperAccent,
                  fontSize: 11.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'National Diploma in Technology (Information Technology) – 2nd Year',
                style: TextStyle(
                  color: _ivoryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Institute of Technology, University of Moratuwa (ITUM), Sri Lanka',
                style: TextStyle(color: _mutedText, fontSize: 12.5),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _zincCard,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: _zincBorder),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Present',
                style: TextStyle(
                  color: _copperAccent,
                  fontSize: 11.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Group Leader - Final Year Project: "Secure Track SL"',
                style: TextStyle(
                  color: _ivoryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Leading the student project team, coordinating tasks, delegation and deadlines through to delivery.',
                style: TextStyle(
                  color: _mutedText,
                  fontSize: 12.5,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSkillsPanel() {
    final current = _skillsByTab[_selectedSkillTab];
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _zincCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _zincBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(_skillTabs.length, (i) {
                final active = _selectedSkillTab == i;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedSkillTab = i),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: active ? _copperAccent : _zincElevated,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        _skillTabs[i],
                        style: TextStyle(
                          color: active ? _obsidianBg : _ivoryText,
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
              for (final item in current)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: _obsidianBg,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: _zincBorder),
                  ),
                  child: Text(
                    item,
                    style: const TextStyle(color: _ivoryText, fontSize: 12),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectRow(int index, List<String> proj) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: _zincCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _zincBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '#${index.toString().padLeft(2, '0')}',
                style: const TextStyle(
                  color: _copperAccent,
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  proj[1],
                  style: const TextStyle(
                    color: _goldSoft,
                    fontSize: 11.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            proj[0],
            style: const TextStyle(
              color: _ivoryText,
              fontSize: 14.5,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            proj[2],
            style: const TextStyle(
              color: _mutedText,
              fontSize: 12.5,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferences() {
    return Column(
      children: [
        _buildRefBox(
          name: 'Mrs. W.M.N. Wathsala Bandara Manike',
          role: 'Lecturer (Probationary), Division of Information Technology, ITUM, University of Moratuwa',
          contact: 'wathsalab@itum.mrt.ac.lk  |  +94 715191223',
        ),
        const SizedBox(height: 10),
        _buildRefBox(
          name: 'Mrs. Tharukshi Adasuriya',
          role: 'Lecturer & Project Coordinator, Institute of Technology, University of Moratuwa (ITUM)',
          contact: 'tharukshin@itum.mrt.ac.lk  |  +94 77 190 2981',
        ),
      ],
    );
  }

  Widget _buildRefBox({
    required String name,
    required String role,
    required String contact,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: _zincCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _zincBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: _ivoryText,
              fontSize: 13.8,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 2),
          Text(role, style: const TextStyle(color: _mutedText, fontSize: 12)),
          const SizedBox(height: 6),
          Text(
            contact,
            style: const TextStyle(
              color: _copperAccent,
              fontSize: 11.8,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCell extends StatelessWidget {
  final String value;
  final String label;

  const _StatCell({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Color(0xFFFAFAFA),
            fontSize: 13,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(color: Color(0xFFA1A1AA), fontSize: 10.5),
        ),
      ],
    );
  }
}

class _ContactListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final VoidCallback onTap;

  const _ContactListTile({
    required this.icon,
    required this.title,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFF27272A),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, size: 17, color: const Color(0xFFF59E0B)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFFA1A1AA),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    value,
                    style: const TextStyle(
                      color: Color(0xFFFAFAFA),
                      fontSize: 12.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right_rounded,
              color: Color(0xFFA1A1AA),
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileLinkCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ProfileLinkCard({
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
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF18181B),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFF3F3F46)),
        ),
        child: Column(
          children: [
            Icon(icon, size: 16, color: const Color(0xFFFDE68A)),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                color: Color(0xFFFAFAFA),
                fontSize: 11.5,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
