import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/footer.dart';
import '../widgets/skill_badge.dart';

class FocusPage extends StatelessWidget {
  const FocusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(currentRoute: '/focus'),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Focus',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Core Technical Stack',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 24),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                    children: [
                      SkillBadge(label: 'Arduino', icon: Icons.settings_input_composite),
                      SkillBadge(label: 'ESP32', icon: Icons.router),
                      SkillBadge(label: 'Python', icon: Icons.code),
                      SkillBadge(label: 'C++', icon: Icons.terminal),
                      SkillBadge(label: 'Flutter', icon: Icons.phone_android),
                      SkillBadge(label: 'TensorFlow', icon: Icons.psychology),
                      SkillBadge(label: 'OpenCV', icon: Icons.camera),
                      SkillBadge(label: 'ROS', icon: Icons.precision_manufacturing),
                      SkillBadge(label: 'MQTT', icon: Icons.broadcast_on_home),
                    ],
                  ),
                  const SizedBox(height: 48),
                  Text(
                    'Areas of Interest',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 24),
                  _InterestCard(
                    title: 'Embedded Systems',
                    description:
                        'Designing and programming microcontroller-based systems for real-world applications.',
                  ),
                  const SizedBox(height: 16),
                  _InterestCard(
                    title: 'IoT & Smart Devices',
                    description:
                        'Creating connected devices that communicate and share data over networks.',
                  ),
                  const SizedBox(height: 16),
                  _InterestCard(
                    title: 'AI & Machine Learning',
                    description:
                        'Developing intelligent systems that learn from data and make predictions.',
                  ),
                  const SizedBox(height: 16),
                  _InterestCard(
                    title: 'Robotics',
                    description:
                        'Building autonomous robots with vision and navigation capabilities.',
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

class _InterestCard extends StatelessWidget {
  final String title;
  final String description;

  const _InterestCard({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context)
                  .colorScheme
                  .onSurface
                  .withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
