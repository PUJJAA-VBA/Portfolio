import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Required for opening links

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            body: Stack(
              children: [
                // ======= Background =======
                Positioned.fill(
                  child: Image.asset(
                    'assets/image/bg_image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),

                // ======= Scrollable Content =======
                SingleChildScrollView(
                  child: Column(
                    children: [
                      // ======= Hero Section =======
                      Container(
                        height: MediaQuery.of(context).size.height,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Image.asset(
                                  'assets/image/bg_image1.png',
                                  height: 400,
                                  width: 400,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'HELLO!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 42,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: '<Montserrat>',
                                      letterSpacing: 2.0,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 8.0,
                                          color: Colors.black.withOpacity(0.7),
                                          offset: const Offset(2.0, 2.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'I\'m Pujjaa VBA',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 38,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: '<Montserrat>',
                                      letterSpacing: 1.5,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 8.0,
                                          color: Colors.black.withOpacity(0.7),
                                          offset: const Offset(2.0, 2.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ======= About Me Section =======
                      _buildAboutSection(context),

                      // ======= Technical Skills Section =======
                      buildTechnicalSkillsSection(context),

                      const SizedBox(height: 32),
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 61, 89, 103),
                              Colors.indigo.shade600,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          children: const [
                            Text(
                              'Download Resume - PUJJAA VBA',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
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
        },
      ),
    );
  }

  // ======= About Me =======
  Widget _buildAboutSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.person_outline_rounded,
                color: Colors.cyanAccent,
                size: 32,
              ),
              SizedBox(width: 10),
              Text(
                'About Me',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.2,
                  fontFamily: '<Montserrat>',
                  shadows: [
                    Shadow(
                      blurRadius: 6.0,
                      color: Colors.black87,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 61, 89, 103),
                  Colors.indigo.shade600,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              children: const [
                Text(
                  '🚀 Aspiring Software Developer | Data + AI Enthusiasist | Flutter + Power BI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Motivated Software Developer skilled in Python, Java, C/C++, and Flutter, with hands-on experience in building cross-platform applications and data-driven solutions. Proficient in Power BI, Excel, Tableau, and SQL, with growing expertise in Microsoft Azure and Generative AI. Proven leader with strong communication, collaboration, and work ethic, recognized for problem-solving and delivering scalable, user-focused software.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 32,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.email_outlined, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'pujjaabaskaran2005@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset(1.5, 1.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () =>
                    _launchURL(context, 'https://github.com/PUJJAA-VBA'),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.code, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'github.com/PUJJAA-VBA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 3,
                            offset: Offset(1.5, 1.5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => _launchURL(
                  context,
                  'https://www.linkedin.com/in/pujjaa-vba/',
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.link, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'linkedin.com/in/pujjaa-vba',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 3,
                            offset: Offset(1.5, 1.5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ======= Gradient Card Builder =======
  Widget _buildSkillButton(
    BuildContext context,
    String title,
    IconData icon,
    VoidCallback onTap,
  ) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double buttonSize = screenWidth > 600
        ? screenWidth * 0.25
        : screenWidth * 0.4;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.cyan.shade300,
              Colors.blue.shade400,
              Colors.indigo.shade500,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 8,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 45, color: Colors.white),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w800,
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ======= Technical Skills Section =======
  Widget buildTechnicalSkillsSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Technical Skills',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w800,
              fontFamily: 'Montserrat',
              shadows: [
                Shadow(
                  blurRadius: 6.0,
                  color: Colors.black.withOpacity(0.8),
                  offset: const Offset(1.0, 1.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),

          // Wrap makes it responsive
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              _buildSkillButton(
                context,
                'Software\nDevelopment',
                Icons.code,
                () => _showSkillDialog(context, 'Software Development'),
              ),
              _buildSkillButton(
                context,
                'Data\nAnalysis',
                Icons.analytics,
                () => _showSkillDialog(context, 'Data Analysis'),
              ),
              _buildSkillButton(
                context,
                'Experiences',
                Icons.work_history,
                () => _showexperiencesDialog(context),
              ),
              _buildSkillButton(
                context,
                'Projects',
                Icons.folder_copy_rounded,
                () => _showProjectsDialog(context),
              ),
              _buildSkillButton(
                context,
                'Certifications',
                Icons.verified,
                () => _showcertificationsDialog(context),
              ),
              _buildSkillButton(
                context,
                'Soft\nSkills',
                Icons.stars_sharp,
                () => _showsoftskillsDialog(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ======= Certifications Dialog (fixed) =======
  void _showcertificationsDialog(BuildContext context) {
    final List<Map<String, String>> certifications = [
      {
        'title': 'AI Intermediate and Advanced',
        'desc': 'Issued by Microsoft Learn Certification',
      },
      {'title': 'Introduction to Golang', 'desc': 'Issued by Simplilearn'},
      {
        'title': 'Data Analytics',
        'desc': 'Deloitte Australia - Forage Virtual Internship',
      },
      {'title': 'Data Analytics using Power BI', 'desc': 'Issued by TechTip24'},
      {'title': 'Python Coder', 'desc': 'Issued by Kaggle'},
      {
        'title': 'CCNA: Introduction to Networks',
        'desc': 'Issued by Cisco Networking Academy',
      },
      {
        'title': 'Career Skills in Data Analytics',
        'desc': 'Issued by LinkedIn Learning',
      },
    ];
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Certifications',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (_, __) => const Divider(),
              itemCount: certifications.length,
              itemBuilder: (context, index) {
                final cert = certifications[index];
                return ListTile(
                  leading: const Icon(
                    Icons.verified,
                    color: Color.fromARGB(255, 114, 73, 186),
                  ),
                  title: Text(
                    cert['title']!,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(cert['desc']!),
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // ======= Soft Skills Dialog (fixed) =======
  void _showsoftskillsDialog(BuildContext context) {
    final List<Map<String, String>> softSkills = [
      {
        'title': 'Leadership',
        'desc': 'Guiding and motivating teams to success',
      },
      {
        'title': 'Effective Communication',
        'desc': 'Clear verbal & written communication',
      },
      {
        'title': 'Analytical Thinking',
        'desc': 'Breaking down complex problems logically',
      },
      {
        'title': 'Strong Work Ethic',
        'desc': 'Committed and consistent in delivery',
      },
    ];
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Soft Skills',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (_, __) => const Divider(),
              itemCount: softSkills.length,
              itemBuilder: (context, index) {
                final skill = softSkills[index];
                return ListTile(
                  leading: const Icon(
                    Icons.stars_sharp,
                    color: Color.fromARGB(255, 255, 193, 7),
                  ),
                  title: Text(
                    skill['title']!,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(skill['desc']!),
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // ======= Experiences Dialog =======
  void _showexperiencesDialog(BuildContext context) {
    final List<Map<String, String>> experiences = [
      {
        'title': 'AI Azure Intern',
        'desc':
            'Edunet Foundation\nCompleted a 4-week Microsoft-AICTE-Edunet Foundation program, building foundational Azure and AI knowledge with hands-on skills in NLP, advanced Generative AI prompting, and core Azure services.',
      },
      {
        'title': 'Data Analyst Intern',
        'desc':
            'Oasis Infobyte\nCreated three interactive Excel dashboards handling 1,500+ rows using advanced functions, pivot tables, and VBA macros to convert raw Kaggle data into actionable business insights.',
      },
    ];
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Experiences',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (_, __) => const Divider(),
              itemCount: experiences.length,
              itemBuilder: (context, index) {
                final exp = experiences[index];
                return ListTile(
                  leading: const Icon(
                    Icons.work_history,
                    color: Color.fromARGB(255, 120, 80, 190),
                  ),
                  title: Text(
                    exp['title']!,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(exp['desc']!),
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // ======= Projects Dialog =======
  void _showProjectsDialog(BuildContext context) {
    final List<Map<String, String>> projects = [
      {
        'title': 'Sentiment Analyzer CLI Tool',
        'desc':
            'Engineered a command-line sentiment tool with VADER, Matplotlib & Gemini Flash 2.5 — cut dev time by 15%.',
      },
      {
        'title': 'Online Task Manager',
        'desc':
            'Led a team of 10 to build a web-based task manager with auth & filter views like Today, This Week, This Month.',
      },
      {
        'title': 'Global Superstore Dashboard',
        'desc':
            'Built an interactive Power BI dashboard analyzing sales, profit, and customer segments from Kaggle dataset.',
      },
      {
        'title': 'Excel VBA Macro Formatter',
        'desc':
            'Automated text formatting in Excel using VBA macros — improved efficiency by 30%, accuracy by 93%.',
      },
    ];
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Projects',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (_, __) => const Divider(),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final proj = projects[index];
                return ListTile(
                  leading: const Icon(
                    Icons.folder_copy_rounded,
                    color: Colors.deepPurple,
                  ),
                  title: Text(
                    proj['title']!,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(proj['desc']!),
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // ======= Skill Dialog (Software vs Data Analysis) =======
  void _showSkillDialog(BuildContext context, String skill) {
    String content;
    IconData icon;
    Color color;
    if (skill.contains('Software')) {
      content =
          '🚀 Software Development Skills\n\nProgramming Languages: C, C++, Java, Python, Dart\nLibraries/Frameworks: NumPy, Pandas, Flutter\nArtificial Intelligence/Machine Learning: AI Prompting (or Generative AI Prompting)\nDatabase: SQL, MySQL\nTools & Platforms: Visual Studio Code, Git, GitHub.';
      icon = Icons.code;
      color = Colors.blue;
    } else {
      content =
          '📊 Data Analysis Skills\n\nProgramming Languages: C, C++, Java, Python\nLibraries/Frameworks: NumPy, Pandas, Flutter\nArtificial Intelligence/Machine Learning: AI Prompting (or Generative AI Prompting)\nDatabase: SQL, MySQL\nTools & Platforms: Visual Studio Code, Microsoft Excel, VBA Macros, Microsoft Power BI, Git, Power Query, Tableau';
      icon = Icons.analytics;
      color = Colors.green;
    }
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(icon, color: color),
              const SizedBox(width: 12),
              Text(skill),
            ],
          ),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _launchURL(BuildContext context, String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Could not launch $urlString'),
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }
}
