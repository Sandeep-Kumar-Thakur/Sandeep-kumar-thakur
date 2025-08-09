import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sandeep/portfolio/data/project_data.dart';

class ProjectOverviewWidget extends StatefulWidget {
  final Project project;
  const ProjectOverviewWidget({super.key, required this.project});

  @override
  State<ProjectOverviewWidget> createState() => _ProjectOverviewWidgetState();
}

class _ProjectOverviewWidgetState extends State<ProjectOverviewWidget> {
  bool isExpanded = false;
  bool isHovering = false;

  void _launchUrl(String url) {
    final anchor = html.AnchorElement(href: url)
      ..target = '_blank'
      ..rel = 'noopener noreferrer'
      ..click();
  }

  @override
  Widget build(BuildContext context) {
    final project = widget.project;
    final screenWidth = MediaQuery.of(context).size.width;

    final isMobile = screenWidth < 600;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isHovering
            ? const Color(0xff40c4ff).withAlpha(30)
            : const Color(0xff40c4ff).withAlpha(10),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white24),
        boxShadow: isHovering
            ? [
          BoxShadow(
            color: Colors.lightBlueAccent.withOpacity(0.4),
            blurRadius: 18,
            offset: const Offset(0, 6),
          ),
        ]
            : [],
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHovering = true),
        onExit: (_) => setState(() => isHovering = false),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ── Header Section ─────────────────────────────────────
            GestureDetector(
              onTap: () => setState(() => isExpanded = !isExpanded),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (project.imageUrl != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        project.imageUrl!,
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return SvgPicture.network(
                            project.imageUrl!,
                            height: 60,
                            width: 60,
                          );
                        },
                      ),
                    ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      project.title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  AnimatedRotation(
                    turns: isExpanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 300),
                    child: const Icon(Icons.keyboard_arrow_down,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            /// ── Tech Stack Tags ─────────────────────────────────────
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: project.techStack
                  .map((tech) => Chip(
                label: Text(tech),
                labelStyle: const TextStyle(fontSize: 12),
                backgroundColor: Colors.blue.shade50,
              ))
                  .toList(),
            ),
            const SizedBox(height: 12),

            /// ── Action Buttons ─────────────────────────────────────
            if (project.playStoreUrl != null ||
                project.appStoreUrl != null ||
                project.webUrl != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    if (project.playStoreUrl != null)
                      ElevatedButton.icon(
                        onPressed: () => _launchUrl(project.playStoreUrl!),
                        icon: const Icon(Icons.android),
                        label: const Text("Play Store"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade600,
                        ),
                      ),
                    if (project.appStoreUrl != null)
                      ElevatedButton.icon(
                        onPressed: () => _launchUrl(project.appStoreUrl!),
                        icon: const Icon(Icons.apple),
                        label: const Text("App Store"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                      ),
                    if (project.webUrl != null)
                      ElevatedButton.icon(
                        onPressed: () => _launchUrl(project.webUrl!),
                        icon: const Icon(Icons.language),
                        label: const Text("View Web"),
                      ),
                  ],
                ),
              ),

            /// ── Expandable Description and Image ─────────────────────
            AnimatedCrossFade(
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
              firstChild: const SizedBox.shrink(),
              secondChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  if (project.imageUrl != null)
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          project.imageUrl!,
                          height: isMobile ? 180 : 240,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return SvgPicture.network(
                              project.imageUrl!,
                              height: isMobile ? 180 : 240,
                            );
                          },
                        ),
                      ),
                    ),
                  const SizedBox(height: 20),
                  Text(
                    project.description,

                    style: const TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}