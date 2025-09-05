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
                            // Expanded(
                            //   flex: 2,
                            //   child: Center(
                            //     child: Image.asset(
                            //       'assets/image/bg_image1.png',
                            //       height: 800,
                            //       width: 800,
                            //       fit: BoxFit.contain,
                            //     ),
                            //   ),
                            // ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'HELLO!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: '<Montserrat>',
                                      letterSpacing: 4.5,
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
                                      fontSize: 55,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: '<Montserrat>',
                                      // fontFamily: 'FontdinerSwanky',
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

                      // const SizedBox(height: 32),
                      // // https://drive.google.com/file/d/1maVAmhduRDYz0vBvPtI2Oa4l8JMu9YuY/view?usp=drive_link
                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.blueGrey,
                              Colors.black,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: EdgeInsets.only(
                          left: 150,
                          right: 150,
                          bottom: 60,
                        ),
                        child: InkWell(
                          onTap: () => _launchURL(
                            context,
                            'https://drive.google.com/file/d/1maVAmhduRDYz0vBvPtI2Oa4l8JMu9YuY/view?usp=drive_link',
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.link,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 3,
                                    offset: Offset(1.5, 1.5),
                                  ),
                                ],
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Download Resume',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
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
                      ),
                      const SizedBox(height: 20),
                      // Container(
                      //   padding: const EdgeInsets.all(24),
                      //   decoration: BoxDecoration(
                      //     gradient: LinearGradient(
                      //       colors: [
                      //         const Color.fromARGB(255, 61, 89, 103),
                      //         Colors.indigo.shade600,
                      //       ],
                      //       begin: Alignment.topLeft,
                      //       end: Alignment.bottomRight,
                      //     ),
                      //     borderRadius: BorderRadius.circular(20),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.black.withOpacity(0.3),
                      //         blurRadius: 12,
                      //         offset: const Offset(0, 6),
                      //       ),
                      //     ],
                      //   ),
                      //   child: Column(
                      //     children: const [
                      //       Text(
                      //         'Download Resume - PUJJAA VBA',
                      //         textAlign: TextAlign.center,
                      //         style: TextStyle(
                      //           fontSize: 18,
                      //           fontWeight: FontWeight.w600,
                      //           color: Colors.white,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
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
                size: 32,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 3,
                    offset: Offset(1.5, 1.5),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Text(
                'ABOUT ME',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.2,
                  fontFamily: '<Montserrat>',
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
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black12,
                  Colors.blueGrey,
                  // Colors.blue.shade400,
                  Colors.black,
                  // Colors.black12,
                  // const Color.fromARGB(255, 61, 89, 103),
                  // Colors.indigo.shade600,
                  // Colors.blue.shade400,
                  // Colors.black,
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
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 3,
                        offset: Offset(1.5, 1.5),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Motivated Software Developer skilled in Python, Java, C/C++, and Flutter, with hands-on experience in building cross-platform applications and data-driven solutions. Proficient in Power BI, Excel, Tableau, and SQL, with growing expertise in Microsoft Azure and Generative AI. Proven leader with strong communication, collaboration, and work ethic, recognized for problem-solving and delivering scalable, user-focused software.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    height: 1.6,
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
          const SizedBox(height: 32),
          Wrap(
            spacing: 32,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 3,
                        offset: Offset(1.5, 1.5),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Text(
                    'pujjaabaskaran2005@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
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
                    Icon(
                      Icons.code,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset(1.5, 1.5),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Text(
                      'github.com/PUJJAA-VBA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
                    Icon(
                      Icons.link,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset(1.5, 1.5),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Text(
                      'linkedin.com/in/pujjaa-vba',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
              // https://leetcode.com/u/Pujjaa07/
              InkWell(
                onTap: () =>
                    _launchURL(context, 'https://leetcode.com/u/Pujjaa07/'),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.link,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset(1.5, 1.5),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Text(
                      'leetcode.com/u/Pujjaa',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
              // https://www.hackerrank.com/profile/pujjaabaskaran21
              InkWell(
                onTap: () => _launchURL(
                  context,
                  'https://www.hackerrank.com/profile/pujjaabaskaran21',
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.link,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 3,
                          offset: Offset(1.5, 1.5),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Text(
                      'hackerrank.com/pujjaa',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
              Colors.black12,
              Colors.blueGrey,
              // Colors.blue.shade400,
              Colors.black,
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
            Icon(
              icon,
              size: 45,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 3,
                  offset: Offset(1.5, 1.5),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w800,
                fontFamily: '<Montserrat>',
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
            'TECHNICAL SKILLS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w800,
              fontFamily: '<Montserrat>',
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 3,
                  offset: Offset(1.5, 1.5),
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
                'SOFTWARE\nDEVELOPMENT',
                Icons.code,
                () => _showSkillDialog(context, 'Software Development Skills'),
              ),
              _buildSkillButton(
                context,
                'DATA\nANALYTICS',
                Icons.analytics,
                () => _showSkillDialog(context, 'Data Analysis Skills'),
              ),
              _buildSkillButton(
                context,
                'EXPERIENCES',
                Icons.work_history,
                () => _showexperiencesDialog(context),
              ),
              _buildSkillButton(
                context,
                'PROJECTS',
                Icons.folder_copy_rounded,
                () => _showProjectsDialog(context),
              ),
              _buildSkillButton(
                context,
                'CERTIFICATIONS',
                Icons.verified,
                () => _showcertificationsDialog(context),
              ),
              _buildSkillButton(
                context,
                'SOFT\nSKILLS',
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
        'desc': 'Issued by Microsoft Learn',
      },
      {'title': 'Golang Basics', 'desc': 'Issued by Simplilearn'},
      {
        'title': 'Virtual Internship in Data Analytics',
        'desc': 'Deloitte Australia - Forage Virtual Internship',
      },
      {'title': 'Power BI Analytics', 'desc': 'Issued by TechTip24'},
      {
        'title': 'CCNA: Networking',
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
            'CERTIFICATIONS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: '<Montserrat>',
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
            'SOFT SKILLS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: '<Montserrat>',
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
                    color: Colors.deepPurple,
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
            'Edunet Foundation\nApplied NLP and advanced prompting with Microsoft Copilot & Gemini 2.5 Flash, achieving 85%+ accuracy.\nGained hands-on experience with Azure Fundamentals and AI services, including model deployment and API integration. ',
      },
      {
        'title': 'Data Analyst Intern',
        'desc':
            'Oasis Infobyte\nBuilt Excel dashboards processing 1,500+ rows using pivot tables, and VBA Macros, reducing manual reporting time by 30%.\nTransformed Kaggle datasets into insights using Power BI & Excel through data cleaning, analysis, and visualization. ',
      },
    ];
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'EXPERIENCES',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: '<Montserrat>',
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
                    color: Colors.deepPurple,
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
        'title': 'Brewly–Flutter App',
        'desc':
            'Developing a cross-platform recipe app featuring 50+ beverages, achieving seamless UI/UX with Flutter & Dart.\nFirebase integration underway for real-time sync and secure authentication, enhancing scalability and user engagement. ',
      },
      {
        'title': 'Sentiment Analyzer CLI Tool',
        'desc':
            'Engineered a CLI-based sentiment analysis tool with NLTK VADER, achieving accurate classification across multiple datasets.\nIntegrated Gemini AI, cutting development time by 15%, and added CSV input and dynamic visualizations for insights reporting.',
      },
      {
        'title': 'Online Task Manager',
        'desc':
            'Led development of a web-based Online Task Manager with user authentication and distinct filters (Today, This Week, This Month).\nDirected a 10-member team as Team Lead, overseeing vision, task allocation, and frontend/backend integration for reliable delivery. ',
      },
      {
        'title': 'Global Superstore Dashboard',
        'desc':
            'Designed an interactive Power BI dashboard analyzing sales, profit, and customer trends across multiple regions.\nUsed Power Query Editor for ETL (Extract, Transform, Load), automating data preparation and improving analysis speed by 40%. ',
      },
    ];
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'PROJECTS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: '<Montserrat>',
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

  void _showSkillDialog(BuildContext context, String skill) {
    IconData icon;
    Color color;
    List<TextSpan> contentSpans;

    if (skill.contains('SOFTWARE')) {
      contentSpans = [
        // const TextSpan(
        //   text: 'Software Development Skills\n\n',
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
        const TextSpan(
          text: 'Languages: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'Python, C, C++, Java, Dart\n'),
        const TextSpan(
          text: 'Libraries/Frameworks: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'NumPy, Pandas, Flutter\n'),
        const TextSpan(
          text: 'AI/ML: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(
          text:
              'Generative AI Prompting (Gemini, Copilot, ChatGPT), NLP Basics\n',
        ),
        const TextSpan(
          text: 'Database: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'SQL, MySQL\n'),
        const TextSpan(
          text: 'Tools & Platforms: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(
          text:
              'Visual Studio Code, Git, GitHub, VS Code, Android Studio, Firebase (In Progress)\n',
        ),
      ];
      icon = Icons.code;
      color = Colors.deepPurple;
    } else {
      contentSpans = [
        // const TextSpan(
        //   text: 'Data Analysis Skills\n\n',
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
        const TextSpan(
          text: 'Languages: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'Python, C, C++, Java, Dart\n'),
        const TextSpan(
          text: 'Libraries/Frameworks: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'NumPy, Pandas, Flutter\n'),
        const TextSpan(
          text: 'AI/ML: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(
          text:
              'Generative AI Prompting (Gemini, Copilot, ChatGPT), NLP Basics\n',
        ),
        const TextSpan(
          text: 'Database: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'SQL, MySQL\n'),
        const TextSpan(
          text: 'Tools & Platforms: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(
          text:
              'Visual Studio Code, Excel, VBA Macros, Power BI, Git, Power Query, Tableau\n',
        ),
      ];
      icon = Icons.analytics;
      color = Colors.deepPurple;
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
          content: SingleChildScrollView(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 14),
                children: contentSpans,
              ),
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

  // // ======= Skill Dialog (Software vs Data Analysis) =======
  // void _showSkillDialog(BuildContext context, String skill) {
  //   String content;
  //   IconData icon;
  //   Color color;
  //   if (skill.contains('SOFTWARE')) {
  //     content =
  //         '🚀 Software Development Skills\n\nLanguages: Python, C, C++, Java, Dart\nLibraries/Frameworks: NumPy, Pandas, Flutter\nAI/ML: Generative AI Prompting (Gemini, Copilot, ChatGPT), NLP Basics\nDatabase: SQL, MySQL\nTools & Platforms: Visual Studio Code, Git, GitHub, VS Code, Android Studio, Firebase (In Progress)';
  //     icon = Icons.code;
  //     // \nDatabase: SQL, MySQL\nTools & Platforms: Visual Studio Code, Git, GitHub.
  //     color = Colors.black;
  //   } else {
  //     content =
  //         '📊 Data Analysis Skills\n\nLanguages: Python, C, C++, Java, Dart\nLibraries/Frameworks: NumPy, Pandas, Flutter\nAI/ML: Generative AI Prompting (Gemini, Copilot, ChatGPT), NLP Basics\nDatabase: SQL, MySQL\nTools & Platforms: Visual Studio Code, Excel, VBA Macros, Power BI, Git, Power Query, Tableau';
  //     icon = Icons.analytics;
  //     color = Colors.black;
  //   }
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Row(
  //           children: [
  //             Icon(icon, color: color),
  //             const SizedBox(width: 12),
  //             Text(skill),
  //           ],
  //         ),
  //         content: Text(content),
  //         actions: [
  //           TextButton(
  //             onPressed: () => Navigator.pop(context),
  //             child: const Text('Close'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

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
