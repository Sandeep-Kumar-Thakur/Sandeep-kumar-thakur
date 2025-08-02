import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../generated/assets.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 40).copyWith(left: 0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 800;

          return Flex(
            direction: isMobile ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: isMobile ? 0 : 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "SANDEEP KUMAR.",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "ABOUT",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blueAccent,
                          decorationThickness: 2,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'I’m a passionate Flutter developer with 5 years of hands-on experience building high-performance applications across mobile, web, desktop (Windows, macOS, Linux) platforms.',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        '💡 If you think Flutter can’t handle certain advanced features — think again.\nI’ve successfully implemented features beyond Flutter’s native support by bridging Flutter with platform-specific native code.',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Whether it’s hardware-level access, custom SDKs, or platform-exclusive APIs, I’ve built seamless integrations that prove Flutter’s real-world flexibility and production readiness.',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Based in Chandigarh, I bring a strong work ethic, a commitment to consistent daily progress, and a results-driven mindset. I take pride in delivering polished, reliable solutions — always focused on quality and timely delivery.',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Let’s build something amazing together.",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "CONTACT ME",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                flex: isMobile ? 0 : 1,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Positioned(
                        bottom: -30,
                        right: isMobile ? -30 : -90,
                        child: const CircleAvatar(
                          radius: 200,
                          backgroundColor: Colors.white12,
                        ),
                      ),
                      Image.asset(
                        alignment: Alignment.bottomRight,
                        Assets.imagesNewProfile,
                        height: isMobile ? 300 : 500,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}