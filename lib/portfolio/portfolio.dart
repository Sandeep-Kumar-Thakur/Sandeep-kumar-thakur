import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandeep/portfolio/data/project_data.dart';
import 'package:sandeep/portfolio/widget/about.dart';
import 'package:sandeep/portfolio/widget/module.dart';
import 'package:sandeep/portfolio/widget/project_overview.dart';

import '../generated/assets.dart';
import '../main.dart';
import 'data/skill_data.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final about = GlobalKey();
  final tech = GlobalKey();
  final project = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF01579b),
      extendBodyBehindAppBar: true,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(Assets.iconsFlutter, height: 80),
            ),
            floating: true,
            snap: true,
            elevation: 10,
            actions: [
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    about.currentContext!,
                    duration: Duration(milliseconds: 1000),
                  ).then((value) {Scrollable.ensureVisible(
                    about.currentContext!,
                    duration: Duration(milliseconds: 1000),
                  );});
                },
                child: Text("About"),
              ),
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    tech.currentContext!,
                    duration: Duration(milliseconds: 1000),
                  ).then((value) {Scrollable.ensureVisible(
                    tech.currentContext!,
                    duration: Duration(milliseconds: 1000),
                  );});
                },
                child: Text("Tech Stack"),
              ),
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    project.currentContext!,
                    duration: Duration(milliseconds: 1000),
                  ).then((value) {Scrollable.ensureVisible(
                    project.currentContext!,
                    duration: Duration(milliseconds: 1000),
                  );});
                },
                child: Text("Projects"),
              ),
            ],
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              About(key: about),
              const SizedBox(height: 20),
              Module(
                key: tech,
                title: 'TECH STACK & TOOLS',
                description: 'Frameworks & Platforms',
                items: techStack,
              ),
              Module(
                description: 'State Management',
                items: stateManagementTools,
              ),
              Module(description: 'Backend & Databases', items: database),
              Module(

                description: 'Cloud & Hosting',
                items: cloudHosting,
              ),
              Module(description: 'Dev Tools & Services', items: devTools),
              Module(description: "SDK's", items: sdks),
              const SizedBox(height: 20),
               Padding(
                key: project,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Text('RECENT PROJECTS', style: TextStyle(fontSize: 30)),
              ),

              ListView.builder(

                shrinkWrap: true,
                itemCount: projectList.length,
                // prototypeItem: ProjectOverviewWidget(project: projectList.first),
                itemBuilder: (context, index) {
                  return ProjectOverviewWidget(project: projectList[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
