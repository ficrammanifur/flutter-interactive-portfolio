class Project {
  final String id;
  final String title;
  final String description;
  final String fullDescription;
  final String category;
  final List<String> techStack;
  final String githubUrl;
  final String liveUrl;

  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.fullDescription,
    required this.category,
    required this.techStack,
    required this.githubUrl,
    required this.liveUrl,
  });
}

final List<Project> projectsList = [
  Project(
    id: '1',
    title: 'Smart Home IoT System',
    description: 'Embedded system for home automation with real-time monitoring',
    fullDescription:
        'A complete IoT system for smart home automation featuring real-time sensor monitoring, wireless communication, and mobile app control. Built with Arduino and ESP32 microcontrollers.',
    category: 'IoT',
    techStack: ['Arduino', 'ESP32', 'MQTT', 'Flutter', 'Firebase'],
    githubUrl: 'https://github.com/ficrammanifur',
    liveUrl: '',
  ),
  Project(
    id: '2',
    title: 'AI Path Planning Robot',
    description: 'Robot using AI algorithms for autonomous navigation',
    fullDescription:
        'An autonomous robot that uses computer vision and pathfinding algorithms to navigate complex environments. Implements A* algorithm for optimal route planning.',
    category: 'AI & Robotics',
    techStack: ['Python', 'ROS', 'OpenCV', 'TensorFlow', 'C++'],
    githubUrl: 'https://github.com/ficrammanifur',
    liveUrl: '',
  ),
  Project(
    id: '3',
    title: 'Sentiment Analysis Tool',
    description: 'ML model for analyzing sentiment in social media posts',
    fullDescription:
        'A machine learning application that analyzes sentiment in social media data using NLP techniques. Features real-time processing and visualization of sentiment trends.',
    category: 'AI & ML',
    techStack: ['Python', 'NLP', 'Scikit-learn', 'Flask', 'React'],
    githubUrl: 'https://github.com/ficrammanifur',
    liveUrl: '',
  ),
  Project(
    id: '4',
    title: 'E-Commerce Mobile App',
    description: 'Full-featured shopping application with payment integration',
    fullDescription:
        'A comprehensive e-commerce application built with Flutter featuring product browsing, secure checkout, order tracking, and user authentication.',
    category: 'Mobile App',
    techStack: ['Flutter', 'Firebase', 'Stripe', 'Dart'],
    githubUrl: 'https://github.com/ficrammanifur',
    liveUrl: '',
  ),
  Project(
    id: '5',
    title: 'Weather Prediction Dashboard',
    description: 'Web app displaying weather forecasts with ML predictions',
    fullDescription:
        'A responsive web dashboard that integrates weather APIs with machine learning models to provide accurate weather predictions and historical data visualization.',
    category: 'Web App',
    techStack: ['React', 'Python', 'FastAPI', 'TensorFlow', 'PostgreSQL'],
    githubUrl: 'https://github.com/ficrammanifur',
    liveUrl: '',
  ),
  Project(
    id: '6',
    title: 'Gesture Recognition System',
    description: 'Real-time gesture detection using computer vision',
    fullDescription:
        'A real-time gesture recognition system using MediaPipe and TensorFlow that detects hand gestures for human-computer interaction applications.',
    category: 'AI & ML',
    techStack: ['Python', 'MediaPipe', 'TensorFlow', 'OpenCV'],
    githubUrl: 'https://github.com/ficrammanifur',
    liveUrl: '',
  ),
];
