import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PUJJAA VBA Portfolio',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
          secondary: AppColors.accent,
          surface: AppColors.surface,
        ),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 56,
            fontWeight: FontWeight.w800,
            color: AppColors.textPrimary,
            height: 1.05,
          ),
          headlineMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
          ),
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            height: 1.7,
            color: AppColors.textSecondary,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            height: 1.6,
            color: AppColors.textSecondary,
          ),
        ),
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class AppColors {
  static const Color background = Color(0xFF05070D);
  static const Color surface = Color(0xFF101722);
  static const Color primary = Color(0xFF7DB7FF);
  static const Color primaryDark = Color(0xFF0B1220);
  static const Color accent = Color(0xFF8BC8FF);
  static const Color softAccent = Color(0xFF17263A);
  static const Color border = Color(0xFF263447);
  static const Color textPrimary = Color(0xFFF4F7FB);
  static const Color textSecondary = Color(0xFFB8C4D6);
  static const Color muted = Color(0xFF8FA0B5);
}

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({super.key});

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  static final List<Project> projects = [
    Project(
      title: 'AgriSense',
      badge: 'FINAL YEAR PROJECT',
      imagePath: 'assets/image/Agrisense.png',
      description:
          'AgriSense is an intelligent weather prediction platform developed as a Final Year Project. The application combines real-time weather parameters from OpenWeatherMap API with an XGBoost machine learning model to provide weather forecasts through an intuitive web interface. The project demonstrates the integration of machine learning, API consumption, and full-stack web development to solve real-world agricultural and weather-related challenges.',
      techStack: [
        'React',
        'HTML',
        'CSS',
        'Python',
        'XGBoost',
        'OpenWeatherMap API',
      ],
      githubUrl: 'https://github.com/PUJJAA-VBA',
    ),
    Project(
      title: 'Brewly',
      imagePath: 'assets/image/Brewly.png',
      description:
          'A Flutter beverage recipe application focused on clean UI, smooth navigation, and Firebase-backed app development. The project reflects mobile engineering practice using Dart, reusable screens, and beginner-friendly product thinking.',
      techStack: ['Flutter', 'Dart', 'Firebase'],
      githubUrl: 'https://github.com/PUJJAA-VBA/Brewly',
    ),
    Project(
      title: 'Online Task Manager',
      imagePath: 'assets/image/Online.png',
      description:
          'A web-based task management project with task organization, filtering, and team-built frontend/backend functionality. The project strengthened practical full-stack development, collaboration, and problem-solving skills.',
      techStack: ['Python', 'HTML', 'CSS', 'JavaScript'],
      githubUrl: 'https://github.com/PUJJAA-VBA/ONLINE-TASK-MANAGER',
    ),
    Project(
      title: 'Sales Dashboard',
      badge: 'POWER BI',
      imagePath: 'assets/image/Sales.png',
      description:
          'A Power BI dashboard designed to analyze sales, profit, and customer trends. The project focuses on data cleaning, visual storytelling, DAX measures, and building recruiter-friendly analytics dashboards.',
      techStack: ['Power Query', 'Power BI', 'DAX', 'Data Analytics'],
      githubUrl: 'https://github.com/PUJJAA-VBA/GLOBAL-SUPERSTORE',
    ),
  ];

  static final List<SkillGroup> skillGroups = [
    SkillGroup(
      title: 'Software Development',
      icon: Icons.code_rounded,
      skills: [
        'Python',
        'OOPs',
        'AI Basics',
        'Databases',
        'APIs',
        'Git',
        'GitHub',
      ],
    ),
    SkillGroup(
      title: 'Application Development',
      icon: Icons.phone_android_rounded,
      skills: ['Flutter', 'Dart', 'Firebase'],
    ),
    // SkillGroup(
    //   title: 'Web & Full Stack',
    //   icon: Icons.language_rounded,
    //   skills: ['HTML', 'CSS', 'JavaScript', 'React', 'SQL', 'MySQL'],
    // ),
    SkillGroup(
      title: 'Data Analytics',
      icon: Icons.analytics_rounded,
      skills: ['Power BI', 'DAX', 'Excel', 'Power Query', 'Tableau', 'Pandas'],
    ),
    SkillGroup(
      title: 'AI & Learning Areas',
      icon: Icons.psychology_alt_rounded,
      skills: ['XGBoost', 'NLP Basics', 'Prompting', 'Azure Fundamentals'],
    ),
    SkillGroup(
      title: 'Professional Skills',
      icon: Icons.groups_rounded,
      skills: [
        'Problem Solving',
        'Communication',
        'Teamwork',
        'Leadership',
        'Continuous Learning',
      ],
    ),
  ];

  void _scrollToSection(GlobalKey key) {
    final BuildContext? sectionContext = key.currentContext;
    if (sectionContext == null) return;

    Scrollable.ensureVisible(
      sectionContext,
      duration: const Duration(milliseconds: 550),
      curve: Curves.easeInOutCubic,
      alignment: 0.06,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _TopBar(
              onAboutPressed: () => _scrollToSection(_aboutKey),
              onProjectsPressed: () => _scrollToSection(_projectsKey),
              onSkillsPressed: () => _scrollToSection(_skillsKey),
              onContactPressed: () => _scrollToSection(_contactKey),
            ),
            _PageContainer(
              child: Column(
                children: [
                  const HeroSection(),
                  AboutSection(key: _aboutKey),
                  FeaturedProjectsSection(
                    key: _projectsKey,
                    projects: projects,
                  ),
                  SkillsSection(key: _skillsKey, skillGroups: skillGroups),
                  const ExperienceSection(),
                  ContactSection(key: _contactKey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({
    required this.onAboutPressed,
    required this.onProjectsPressed,
    required this.onSkillsPressed,
    required this.onContactPressed,
  });

  final VoidCallback onAboutPressed;
  final VoidCallback onProjectsPressed;
  final VoidCallback onSkillsPressed;
  final VoidCallback onContactPressed;

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 760;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(bottom: BorderSide(color: AppColors.border)),
      ),
      child: _PageContainer(
        verticalPadding: 0,
        child: SizedBox(
          height: 72,
          child: Row(
            children: [
              const Text(
                'Pujjaa VBA',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              if (isWide) ...[
                _NavText('About', onPressed: onAboutPressed),
                _NavText('Projects', onPressed: onProjectsPressed),
                _NavText('Skills', onPressed: onSkillsPressed),
                _NavText('Contact', onPressed: onContactPressed),
                const SizedBox(width: 16),
              ],
              _SmallIconButton(
                tooltip: 'GitHub',
                icon: FontAwesomeIcons.github,
                onPressed: () =>
                    launchExternalUrl(context, 'https://github.com/PUJJAA-VBA'),
              ),
              const SizedBox(width: 8),
              _SmallIconButton(
                tooltip: 'LinkedIn',
                icon: FontAwesomeIcons.linkedinIn,
                onPressed: () => launchExternalUrl(
                  context,
                  'https://www.linkedin.com/in/pujjaa-vba/',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavText extends StatelessWidget {
  const _NavText(this.label, {required this.onPressed});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: AppColors.textSecondary,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        child: Text(label),
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 900;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget heroCopy = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _StatusBadge(label: 'Open to internships and fellowships'),
        const SizedBox(height: 22),
        Text(
          'Hi, I am Pujjaa VBA.',
          style: textTheme.displayLarge?.copyWith(fontSize: isWide ? 56 : 40),
        ),
        const SizedBox(height: 18),
        const Text(
          'Software Developer  |  Data & AI Enthusiast  |  Flutter • Power BI • Python ',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 1.45,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          'Computer Science Engineering student building practical software projects across Flutter, full-stack web development, machine learning, and analytics. I enjoy turning ideas into clean, usable products and learning through hands-on project work.',
          style: textTheme.bodyLarge,
        ),
        const SizedBox(height: 28),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            PrimaryButton(
              icon: Icons.folder_open_rounded,
              label: 'GitHub Projects',
              onPressed: () =>
                  launchExternalUrl(context, 'https://github.com/PUJJAA-VBA'),
            ),
            SecondaryButton(
              icon: Icons.description_rounded,
              label: 'Resume',
              onPressed: () => launchExternalUrl(
                context,
                'https://drive.google.com/file/d/1cEMxT9pDDH7DZHukrr7HxRpW49VQq2qY/view?usp=drive_link',
              ),
            ),
            SecondaryButton(
              icon: Icons.mail_outline_rounded,
              label: 'Contact',
              onPressed: () => launchExternalUrl(
                context,
                'mailto:pujjaabaskaran2005@gmail.com',
              ),
            ),
          ],
        ),
      ],
    );

    return Padding(
      padding: EdgeInsets.symmetric(vertical: isWide ? 88 : 56),
      child: isWide
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 6,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 680),
                    child: heroCopy,
                  ),
                ),
                const SizedBox(width: 44),
                const Expanded(flex: 4, child: HeroSummaryCard()),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heroCopy,
                const SizedBox(height: 32),
                const HeroSummaryCard(),
              ],
            ),
    );
  }
}

class HeroSummaryCard extends StatelessWidget {
  const HeroSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F172033),
            blurRadius: 30,
            offset: Offset(0, 18),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Portfolio Focus',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20),
          _FocusItem(
            icon: Icons.phone_android_rounded,
            title: 'Mobile apps',
            subtitle: 'Flutter and Dart project experience',
          ),
          _FocusItem(
            icon: Icons.web_rounded,
            title: 'Software Development',
            subtitle: 'Python, OOPs, AI Basic, APIs, and databases',
          ),
          _FocusItem(
            icon: Icons.insights_rounded,
            title: 'Data Analytics',
            subtitle:
                'Numpy, Pandas, MAtplotlib, Tableau, Power BI dashboards and data storytelling',
          ),
          const SizedBox(height: 22),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: const [
              _SocialButton(
                label: 'GitHub',
                icon: FontAwesomeIcons.github,
                url: 'https://github.com/PUJJAA-VBA',
              ),
              _SocialButton(
                label: 'LinkedIn',
                icon: FontAwesomeIcons.linkedinIn,
                url: 'https://www.linkedin.com/in/pujjaa-vba/',
              ),
              _SocialButton(
                label: 'LeetCode',
                icon: Icons.code_rounded,
                url: 'https://leetcode.com/u/Pujjaa07/',
              ),
              _SocialButton(
                label: 'HackerRank',
                icon: FontAwesomeIcons.hackerrank,
                url: 'https://www.hackerrank.com/profile/pujjaabaskaran21',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Section(
      eyebrow: 'About',
      title: 'A practical developer with interest across apps, web, and data.',
      child: Text(
        'I am a Computer Science Engineering student focused on software development, application development, and data analytics. My work includes Flutter apps, web projects, machine learning experiments, and Power BI dashboards. I like building projects that are clear, useful, and easy to improve over time.\n\nI am continuously strengthening my programming fundamentals, problem-solving ability, and product thinking through internships, team projects, and self-driven learning.',
        style: TextStyle(
          color: AppColors.textSecondary,
          fontSize: 16,
          height: 1.75,
        ),
      ),
    );
  }
}

class FeaturedProjectsSection extends StatelessWidget {
  const FeaturedProjectsSection({super.key, required this.projects});

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return Section(
      eyebrow: 'Featured Projects',
      title:
          'Hands-on projects built through learning, teamwork, and practice.',
      child: Column(
        children: [
          for (int index = 0; index < projects.length; index++) ...[
            ProjectCard(project: projects[index]),
            if (index != projects.length - 1) const SizedBox(height: 24),
          ],
        ],
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key, required this.skillGroups});

  final List<SkillGroup> skillGroups;

  @override
  Widget build(BuildContext context) {
    return Section(
      eyebrow: 'Skills',
      title: 'Grouped skills used in projects.',
      child: LayoutBuilder(
        builder: (context, constraints) {
          final int columns = constraints.maxWidth >= 900 ? 3 : 1;
          return Wrap(
            spacing: 18,
            runSpacing: 18,
            children: skillGroups
                .map(
                  (group) => SizedBox(
                    width: columns == 3
                        ? (constraints.maxWidth - 36) / 3
                        : constraints.maxWidth,
                    child: SkillGroupCard(group: group),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(
      eyebrow: 'Experience',
      title: 'Internship and learning experience.',
      child: Column(
        children: const [
          ExperienceCard(
            role: 'AI Azure Intern',
            organization: 'Edunet Foundation',
            duration: 'May 2025 - Jun 2025',
            description:
                'Learned AI tools, prompting workflows, Azure fundamentals, and API-oriented learning. Built confidence in applying AI services to practical software ideas.',
          ),
          SizedBox(height: 16),
          ExperienceCard(
            role: 'Data Analyst Intern',
            organization: 'Oasis Infobyte',
            duration: 'Jun 2024 - Jul 2024',
            description:
                'Created Excel and Power BI dashboards, cleaned datasets, and practiced presenting data insights in a simple, business-friendly format.',
          ),
        ],
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 32, bottom: 56),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppColors.primaryDark,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Let us connect',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'I am open to software engineering internships, startup opportunities, and fellowship programs where I can contribute, learn, and keep building.',
            style: TextStyle(
              color: Color(0xFFD9E5F5),
              fontSize: 15,
              height: 1.7,
            ),
          ),
          const SizedBox(height: 22),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              PrimaryButton(
                icon: Icons.email_outlined,
                label: 'Email Me',
                inverted: true,
                onPressed: () => launchExternalUrl(
                  context,
                  'mailto:pujjaabaskaran2005@gmail.com',
                ),
              ),
              SecondaryButton(
                icon: FontAwesomeIcons.linkedinIn,
                label: 'LinkedIn',
                dark: true,
                onPressed: () => launchExternalUrl(
                  context,
                  'https://www.linkedin.com/in/pujjaa-vba/',
                ),
              ),
              SecondaryButton(
                icon: FontAwesomeIcons.github,
                label: 'GitHub',
                dark: true,
                onPressed: () =>
                    launchExternalUrl(context, 'https://github.com/PUJJAA-VBA'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 760;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            child: Container(
              width: double.infinity,
              height: isWide ? 360 : 240,
              color: AppColors.softAccent,
              child: project.imagePath == null
                  ? const Center(
                      child: Text(
                        'PROJECT SCREENSHOT - ADD IMAGE HERE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                    )
                  : Image.asset(
                      project.imagePath!,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Text(
                            'PROJECT SCREENSHOT - ADD IMAGE HERE',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        project.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    if (project.badge != null) ...[
                      const SizedBox(width: 12),
                      _StatusBadge(label: project.badge!),
                    ],
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  project.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 18),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: project.techStack
                      .map((tech) => SkillChip(label: tech))
                      .toList(),
                ),
                const SizedBox(height: 22),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    SecondaryButton(
                      icon: FontAwesomeIcons.github,
                      label: 'GitHub',
                      onPressed: () =>
                          launchExternalUrl(context, project.githubUrl),
                    ),
                    if (project.liveDemoUrl != null)
                      SecondaryButton(
                        icon: Icons.open_in_new_rounded,
                        label: 'Live Demo',
                        onPressed: () =>
                            launchExternalUrl(context, project.liveDemoUrl!),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkillGroupCard extends StatelessWidget {
  const SkillGroupCard({super.key, required this.group});

  final SkillGroup group;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 246,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(group.icon, color: AppColors.primary, size: 28),
          const SizedBox(height: 14),
          Text(
            group.title,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 17,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: group.skills
                .map((skill) => SkillChip(label: skill, compact: true))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    super.key,
    required this.role,
    required this.organization,
    required this.duration,
    required this.description,
  });

  final String role;
  final String organization;
  final String duration;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(role, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 6),
          Text(
            '$organization | $duration',
            style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Text(description, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.eyebrow,
    required this.title,
    required this.child,
  });

  final String eyebrow;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eyebrow.toUpperCase(),
            style: const TextStyle(
              color: AppColors.accent,
              fontSize: 13,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const SizedBox(height: 24),
          child,
        ],
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  const SkillChip({super.key, required this.label, this.compact = false});

  final String label;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: compact ? 10 : 12,
        vertical: compact ? 7 : 8,
      ),
      decoration: BoxDecoration(
        color: AppColors.softAccent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xFFD4E4FA)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: AppColors.primary,
          fontSize: compact ? 12 : 13,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _FocusItem extends StatelessWidget {
  const _FocusItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: AppColors.softAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: AppColors.primary, size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: AppColors.softAccent,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label.toUpperCase(),
        style: const TextStyle(
          color: AppColors.primary,
          fontSize: 11,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.7,
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.inverted = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool inverted;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(label),
      style: FilledButton.styleFrom(
        backgroundColor: inverted ? Colors.white : AppColors.primary,
        foregroundColor: inverted ? AppColors.primaryDark : Colors.white,
        minimumSize: const Size(0, 48),
        padding: const EdgeInsets.symmetric(horizontal: 18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        textStyle: const TextStyle(fontWeight: FontWeight.w800),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.dark = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    final Color foreground = dark ? Colors.white : AppColors.primary;
    final Color border = dark ? const Color(0xFF4F6583) : AppColors.border;

    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 17),
      label: Text(label),
      style: OutlinedButton.styleFrom(
        foregroundColor: foreground,
        side: BorderSide(color: border),
        minimumSize: const Size(0, 48),
        padding: const EdgeInsets.symmetric(horizontal: 18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        textStyle: const TextStyle(fontWeight: FontWeight.w800),
      ),
    );
  }
}

class _SmallIconButton extends StatelessWidget {
  const _SmallIconButton({
    required this.tooltip,
    required this.icon,
    required this.onPressed,
  });

  final String tooltip;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: 18),
        color: AppColors.primary,
        style: IconButton.styleFrom(
          backgroundColor: AppColors.softAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({
    required this.label,
    required this.icon,
    required this.url,
  });

  final String label;
  final IconData icon;
  final String url;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () => launchExternalUrl(context, url),
      icon: Icon(icon, size: 16),
      label: Text(label),
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.border),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
      ),
    );
  }
}

class _PageContainer extends StatelessWidget {
  const _PageContainer({required this.child, this.verticalPadding = 0});

  final Widget child;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1120),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width >= 760 ? 32 : 20,
            vertical: verticalPadding,
          ),
          child: child,
        ),
      ),
    );
  }
}

class Project {
  const Project({
    required this.title,
    required this.description,
    required this.techStack,
    required this.githubUrl,
    this.badge,
    this.liveDemoUrl,
    this.imagePath,
  });

  final String title;
  final String description;
  final List<String> techStack;
  final String githubUrl;
  final String? badge;
  final String? liveDemoUrl;
  final String? imagePath;
}

class SkillGroup {
  const SkillGroup({
    required this.title,
    required this.icon,
    required this.skills,
  });

  final String title;
  final IconData icon;
  final List<String> skills;
}

Future<void> launchExternalUrl(BuildContext context, String urlString) async {
  final Uri url = Uri.parse(urlString);

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Could not open $urlString'),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
