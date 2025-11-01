import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/footer.dart';
import '../widgets/skill_badge.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(currentRoute: '/about'),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 32),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardTheme.color,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.1),
                      ),
                    ),
                    child: Text(
                      'I am an Electrical Engineering student with a passion for embedded systems and artificial intelligence. '
                      'With hands-on experience in IoT development, robotics, and machine learning, I create innovative solutions '
                      'that bridge hardware and software. My work focuses on making technology more efficient and accessible.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        height: 1.6,
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.85),
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  Text(
                    'Skills & Experience',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 32),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: [
                      SkillBadge(
                        label: 'Embedded Systems',
                        icon: Icons.memory,
                      ),
                      SkillBadge(
                        label: 'IoT Development',
                        icon: Icons.sensors,
                      ),
                      SkillBadge(
                        label: 'Machine Learning',
                        icon: Icons.psychology,
                      ),
                      SkillBadge(
                        label: 'Robotics',
                        icon: Icons.precision_manufacturing,
                      ),
                      SkillBadge(
                        label: 'Flutter Development',
                        icon: Icons.phone_android,
                      ),
                      SkillBadge(
                        label: 'Python Programming',
                        icon: Icons.code,
                      ),
                      SkillBadge(
                        label: 'Circuit Design',
                        icon: Icons.electrical_services,
                      ),
                      SkillBadge(
                        label: 'Data Analysis',
                        icon: Icons.analytics,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
