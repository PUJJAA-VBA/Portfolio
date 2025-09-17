import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    flex: 100,
                                    child: Text(
                                      'HELLO! ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 45,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: 'SpecialElite',
                                        letterSpacing: 4.5,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 8.0,
                                            color: Colors.black.withOpacity(
                                              0.7,
                                            ),
                                            offset: const Offset(2.0, 2.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // const SizedBox(height: 5),
                                  Flexible(
                                    flex: 100,
                                    child: Text(
                                      'I\'m PUJJAA VBA',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'SpecialElite',
                                        // fontFamily: 'FontdinerSwanky',
                                        letterSpacing: 1.5,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 8.0,
                                            color: Colors.black.withOpacity(
                                              0.7,
                                            ),
                                            offset: const Offset(2.0, 2.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  // const SizedBox(height: 5),
                                  Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 16,
                                      horizontal: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,

                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    margin: const EdgeInsets.only(
                                      left: 50,
                                      right: 50,
                                      bottom: 20,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        // ✅ Wrap makes the links auto-break into new lines on smaller screens
                                        Wrap(
                                          alignment: WrapAlignment.center,
                                          spacing: 20,
                                          runSpacing: 10,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                InkWell(
                                                  onTap: () => _launchURL(
                                                    context,
                                                    'mailto:pujjaabaskaran2005@gmail.com',
                                                  ),
                                                  child: Flexible(
                                                    flex: 100,
                                                    child: Icon(
                                                      Icons.email_outlined,
                                                      color: Colors.white,
                                                      size: 35,
                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black,
                                                          blurRadius: 3,
                                                          offset: Offset(
                                                            1.5,
                                                            1.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 15),
                                                InkWell(
                                                  onTap: () => _launchURL(
                                                    context,
                                                    'https://www.linkedin.com/in/pujjaa-vba/',
                                                  ),
                                                  child: Flexible(
                                                    flex: 100,
                                                    child: FaIcon(
                                                      FontAwesomeIcons.linkedin,
                                                      color: Colors.white,
                                                      size: 28.6,
                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black,
                                                          blurRadius: 3,
                                                          offset: Offset(
                                                            1.5,
                                                            1.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 15),
                                                InkWell(
                                                  onTap: () => _launchURL(
                                                    context,
                                                    'https://github.com/PUJJAA-VBA',
                                                  ),
                                                  child: Flexible(
                                                    flex: 100,
                                                    child: FaIcon(
                                                      FontAwesomeIcons.github,
                                                      color: Colors.white,
                                                      size: 28.6,
                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black,
                                                          blurRadius: 3,
                                                          offset: Offset(
                                                            1.5,
                                                            1.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 15),

                                                InkWell(
                                                  onTap: () => _launchURL(
                                                    context,
                                                    'https://leetcode.com/u/Pujjaa07/',
                                                  ),
                                                  child: Image.asset(
                                                    'assets/image/leetcode_image.png',
                                                    width: 26.8,
                                                    height: 26.8,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                SizedBox(width: 15),
                                                InkWell(
                                                  onTap: () => _launchURL(
                                                    context,
                                                    'https://www.hackerrank.com/profile/pujjaabaskaran21',
                                                  ),
                                                  child: Flexible(
                                                    flex: 100,
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .hackerrank,
                                                      color: Colors.white,

                                                      size: 28.6,
                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black,
                                                          blurRadius: 3,
                                                          offset: Offset(
                                                            1.5,
                                                            1.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
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
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              const Color.fromARGB(255, 113, 48, 192),
                              Colors.black,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.3),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: EdgeInsets.only(
                          left: 50,
                          right: 50,
                          bottom: 25,
                        ),
                        child: InkWell(
                          onTap: () => _launchURL(
                            // https://drive.google.com/file/d/1Wgoge88bGFWnovLUVGGRqWDgGQLz76Hh/view?usp=drive_link
                            context,
                            'https://drive.google.com/file/d/1Wgoge88bGFWnovLUVGGRqWDgGQLz76Hh/view?usp=drive_link',
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
                              Flexible(
                                flex: 1000,
                                child: Text(
                                  'DOWNLOAD RESUME',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: '<Montserrat>',
                                    // letterSpacing: 2.0,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 3,
                                        offset: Offset(1.5, 1.5),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
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
              Flexible(
                flex: 100,
                child: Text(
                  'ABOUT ME',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                    fontFamily: 'SpecialElite',
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 3,
                        offset: Offset(1.5, 1.5),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Container(
            margin: EdgeInsets.all(15),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  const Color.fromARGB(255, 113, 48, 192),
                  Colors.black,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Flexible(
              flex: 100,
              child: Column(
                children: const [
                  Text(
                    '🚀 Aspiring Software Developer | Data + AI Enthusiasist | Flutter + Power BI',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
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
                    'Motivated Computer Science Engineering student with a strong focus on Software Development, Data Analytics, and Mobile Application Development. Proficient in Python, Java, Flutter, Power BI, and Tableau, with hands-on experience delivering projects that integrate Problem-Solving and practical Applications. Demonstrates Leadership and effective Communication through collaborative Team projects and technical Workshops. Actively exploring Cloud technologies and advanced Flutter development, while continuously enhancing DSA, system design, and scalable software architecture skills.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
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
          ),
          const SizedBox(height: 32),
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
              Colors.black,
              const Color.fromARGB(255, 113, 48, 192),
              Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
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
            Flexible(
              flex: 1000,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  // letterSpacing: 2.0,
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
            'KNOW MORE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w800,
              fontFamily: 'SpecialElite',
              letterSpacing: 2,
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
                'SOFTWARE\nDEVELOPMENT\nSKILLS',
                Icons.code,
                () => _showSkillDialog(context, 'Software Development'),
              ),
              _buildSkillButton(
                context,
                'DATA\nANALYTICS\nSKILLS',
                Icons.analytics,
                () => _showSkillDialog(context, 'Data Analysis '),
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

  // https://drive.google.com/drive/folders/16Qw7KJkTVRS8dxknXXkenRLogBKDSkN3
  // ======= Certifications Dialog (fixed) =======
  void _showcertificationsDialog(BuildContext context) {
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
            width: MediaQuery.of(context).size.width * 0.15,
            child: InkWell(
              onTap: () => _launchURL(
                context,
                'https://drive.google.com/drive/folders/16Qw7KJkTVRS8dxknXXkenRLogBKDSkN3',
              ),
              child: Flexible(
                flex: 1000,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.link, color: Colors.blueGrey),
                    SizedBox(width: 8),
                    Text(
                      'View Certifications',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                        // decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
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
      {
        'title': 'Problem Solving',
        'desc': 'Identifying issues quickly and developing effective solutions',
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
          content: Flexible(
            flex: 1000,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (_, __) => const Divider(),
                itemCount: softSkills.length,
                itemBuilder: (context, index) {
                  final skill = softSkills[index];
                  return ListTile(
                    leading: Flexible(
                      flex: 100,
                      child: Icon(Icons.stars_sharp, color: Colors.deepPurple),
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

  void _showexperiencesDialog(BuildContext context) {
    final List<Map<String, String>> experiences = [
      {
        'title': 'AI Azure Intern',

        'org': 'Edunet Foundation',
        'year': 'May 2025 - Jun 2025',
        'desc':
            'Applied NLP and advanced prompting with Microsoft Copilot & Gemini 2.5 Flash, achieving 85%+ accuracy.\nGained hands-on experience with Azure Fundamentals and AI services, including model deployment and API integration.',
      },
      {
        'title': 'Data Analyst Intern',
        'org': 'Oasis Infobyte',
        'year': 'Jun 2024 - Jul 2024',
        'desc':
            'Built Excel dashboards processing 1,500+ rows using pivot tables, and VBA Macros, reducing manual reporting time by 30%.\nTransformed Kaggle datasets into insights using Power BI & Excel through data cleaning, analysis, and visualization.',
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
              fontFamily: 'Montserrat',
            ),
          ),
          content: Flexible(
            flex: 1000,
            child: SizedBox(
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
                    subtitle: RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: '${exp['org']}\n',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '${exp['year']}\n',
                            style: const TextStyle(
                              // fontStyle: FontStyle.italic,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(text: exp['desc']),
                        ],
                      ),
                    ),
                  );
                },
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

  // ======= Projects Dialog =======
  void _showProjectsDialog(BuildContext context) {
    final List<Map<String, String>> projects = [
      {
        'title': 'Brewly–Flutter App',
        'desc':
            'Developing a cross-platform recipe app featuring 50+ beverages, achieving seamless UI/UX with Flutter & Dart.\nFirebase integration underway for real-time sync and secure authentication, enhancing scalability and user engagement.',
        'link': 'https://github.com/PUJJAA-VBA/Brewly',
      },
      {
        'title': 'Sentiment Analyzer CLI Tool',
        'desc':
            'Engineered a CLI-based sentiment analysis tool with NLTK VADER, achieving accurate classification across multiple datasets.\nIntegrated Gemini AI, cutting development time by 15%, and added CSV input and dynamic visualizations for insights reporting.',
        'link': 'https://github.com/PUJJAA-VBA/Sentiment-Analyzer',
      },
      {
        'title': 'Online Task Manager',
        'desc':
            'Led development of a web-based Online Task Manager with user authentication and distinct filters (Today, This Week, This Month).\nDirected a 10-member team as Team Lead, overseeing vision, task allocation, and frontend/backend integration for reliable delivery.',
        'link': 'https://github.com/PUJJAA-VBA/ONLINE-TASK-MANAGER',
      },
      {
        'title': 'Global Superstore Dashboard',
        'desc':
            'Designed an interactive Power BI dashboard analyzing sales, profit, and customer trends across multiple regions.\nUsed Power Query Editor for ETL (Extract, Transform, Load), automating data preparation and improving analysis speed by 40%.',
        'link': 'https://github.com/PUJJAA-VBA/GLOBAL-SUPERSTORE',
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
              fontFamily: 'Montserrat',
            ),
          ),
          content: Flexible(
            flex: 1000,
            child: SizedBox(
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
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(proj['desc']!),
                        const SizedBox(height: 2),
                        if (proj['link'] != null)
                          TextButton.icon(
                            onPressed: () => _launchURL(
                              context,
                              proj['link']!,
                            ), // ✅ pass String
                            icon: const Icon(
                              Icons.link,
                              color: Colors.blueGrey,
                            ),
                            label: const Text(
                              "View Project",
                              style: TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                // decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
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
          text: 'Languages:\n',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'Python, C, C++, Java, Dart\n'),
        const TextSpan(
          text: 'Libraries/Frameworks:\n',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'NumPy, Pandas, Flutter\n'),
        const TextSpan(
          text: 'AI/ML:\n',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(
          text:
              'Generative AI Prompting (Gemini, Copilot, ChatGPT), NLP Basics\n',
        ),
        const TextSpan(
          text: 'Database:\n',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'SQL, MySQL\n'),
        const TextSpan(
          text: 'Tools & Platforms:\n',
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
          text: 'Languages:\n',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'Python, C, C++, Java, Dart\n'),
        const TextSpan(
          text: 'Libraries/Frameworks:\n',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'NumPy, Pandas, Flutter\n'),
        const TextSpan(
          text: 'AI/ML:\n',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(
          text:
              'Generative AI Prompting (Gemini, Copilot, ChatGPT), NLP Basics\n',
        ),
        const TextSpan(
          text: 'Database:\n',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: 'SQL, MySQL\n'),
        const TextSpan(
          text: 'Tools & Platforms:\n',
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
          content: Flexible(
            flex: 1000,
            child: SingleChildScrollView(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                  children: contentSpans,
                ),
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
