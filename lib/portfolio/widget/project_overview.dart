// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';

class ProjectOverviewWidget extends StatelessWidget {
  final String title;
  final String description;
  final List<String> techStack;
  final String? imageUrl;

  final String? playStoreUrl;
  final String? appStoreUrl;
  final String? webUrl;

  const ProjectOverviewWidget({
    super.key,
    required this.title,
    required this.description,
    required this.techStack,
    this.imageUrl,
    this.playStoreUrl,
    this.appStoreUrl,
    this.webUrl,
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isExpanded = ValueNotifier(false);
    ValueNotifier<bool> isHovering = ValueNotifier(false);

    return ValueListenableBuilder<bool>(
      valueListenable: isExpanded,
      builder: (context, expanded, _) {
        return ValueListenableBuilder<bool>(
          valueListenable: isHovering,
          builder: (context, hovering, _) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) => isHovering.value = true,
              onExit: (_) => isHovering.value = false,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: hovering
                      ? const Color(0xff40c4ff).withAlpha(30)
                      : const Color(0xff40c4ff).withAlpha(5),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: hovering
                      ? [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                      : [],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => isExpanded.value = !expanded,
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              AnimatedRotation(
                                turns: expanded ? 0.5 : 0,
                                duration: const Duration(milliseconds: 300),
                                child: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: techStack
                          .asMap()
                          .entries
                          .map(
                            (entry) => MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: TweenAnimationBuilder<double>(
                            tween: Tween(begin: 0.0, end: 1.0),
                            duration: Duration(milliseconds: 300 + entry.key * 100),
                            builder: (context, value, child) {
                              return Transform.scale(
                                scale: value,
                                child: AnimatedOpacity(
                                  duration: const Duration(milliseconds: 200),
                                  opacity: value,
                                  child: Chip(
                                    key: ValueKey(entry.value),
                                    label: Text(entry.value),
                                    backgroundColor: Colors.blue.shade50,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                          .toList(),
                    ),
                    const SizedBox(height: 12),
                    AnimatedCrossFade(
                      crossFadeState: expanded
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      duration: const Duration(milliseconds: 300),
                      firstChild: const SizedBox.shrink(),
                      secondChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (imageUrl != null)
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  imageUrl!,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          const SizedBox(height: 16),
                          Text(
                            description,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 24),
                          Wrap(
                            spacing: 12,
                            children: [
                              if (playStoreUrl != null)
                                ElevatedButton.icon(
                                  onPressed: () => _launchUrl(playStoreUrl!),
                                  icon: const Icon(Icons.android),
                                  label: const Text("Play Store"),
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                ),
                              if (appStoreUrl != null)
                                ElevatedButton.icon(
                                  onPressed: () => _launchUrl(appStoreUrl!),
                                  icon: const Icon(Icons.apple),
                                  label: const Text("App Store"),
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                ),
                              if (webUrl != null)
                                ElevatedButton.icon(
                                  onPressed: () => _launchUrl(webUrl!),
                                  icon: const Icon(Icons.language),
                                  label: const Text("View Web"),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _launchUrl(String url) {
    final anchor = html.AnchorElement(href: url)
      ..target = '_blank'
      ..rel = 'noopener noreferrer'
      ..click();
  }
}