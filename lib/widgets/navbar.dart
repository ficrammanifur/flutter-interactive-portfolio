import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../themes/theme_provider.dart';

class NavBar extends StatelessWidget {
  final String currentRoute;

  const NavBar({Key? key, required this.currentRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDark = themeProvider.isDarkMode;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      color: isDark ? const Color(0xFF1E293B) : Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'PORTFOLIOO',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Row(
            children: [
              _NavItem(
                label: 'Home',
                route: '/',
                isActive: currentRoute == '/',
              ),
              const SizedBox(width: 24),
              _NavItem(
                label: 'About',
                route: '/about',
                isActive: currentRoute == '/about',
              ),
              const SizedBox(width: 24),
              _NavItem(
                label: 'Projects',
                route: '/projects',
                isActive: currentRoute == '/projects',
              ),
              const SizedBox(width: 24),
              _NavItem(
                label: 'Focus',
                route: '/focus',
                isActive: currentRoute == '/focus',
              ),
              const SizedBox(width: 24),
              _NavItem(
                label: 'Contact',
                route: '/contact',
                isActive: currentRoute == '/contact',
              ),
              const SizedBox(width: 32),
              IconButton(
                icon: Icon(themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode),
                onPressed: () => themeProvider.toggleTheme(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatefulWidget {
  final String label;
  final String route;
  final bool isActive;

  const _NavItem({
    Key? key,
    required this.label,
    required this.route,
    required this.isActive,
  }) : super(key: key);

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () => Navigator.pushReplacementNamed(context, widget.route),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: widget.isActive
                ? Theme.of(context).colorScheme.primary
                : _isHovered
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onSurface,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.w400,
          ),
          child: Text(widget.label),
        ),
      ),
    );
  }
}
