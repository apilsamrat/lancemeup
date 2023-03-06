import 'package:flutter/material.dart';
import 'package:lancemeup/screens/homepage/components/customcard/customcard_component.dart';

class ProjectToolsPage extends StatefulWidget {
  const ProjectToolsPage({super.key});

  @override
  State<ProjectToolsPage> createState() => _ProjectToolsPageState();
}

class _ProjectToolsPageState extends State<ProjectToolsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: CustomCard(
                title: "Revamp Project",
                tableContents: [
                  ["Template: ", "kanban"],
                  ["Status: ", "On hold"],
                  ["Last Updated: ", "2m ago"],
                ],
                images: [
                  'assets/images/1.png',
                  'assets/images/2.png',
                  'assets/images/3.png',
                  'assets/images/1.png',
                  'assets/images/2.png',
                ],
                progress: 40,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: CustomCard(
                title: "Revamp Project",
                tableContents: [
                  ["Template: ", "Scrum"],
                  ["Status: ", "On hold"],
                  ["Last Updated: ", "2m ago"],
                ],
                images: [
                  'assets/images/1.png',
                  'assets/images/2.png',
                  'assets/images/3.png',
                  'assets/images/1.png',
                  'assets/images/2.png',
                ],
                progress: 40,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: CustomCard(
                title: "Revamp Project",
                tableContents: [
                  ["Template: ", "Bug Project"],
                  ["Status: ", "On hold"],
                  ["Last Updated: ", "2m ago"],
                ],
                images: [
                  'assets/images/1.png',
                  'assets/images/2.png',
                  'assets/images/3.png',
                  'assets/images/1.png',
                  'assets/images/2.png',
                ],
                progress: 40,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: CustomCard(
                title: "Revamp Project",
                tableContents: [
                  ["Template: ", "Scrum"],
                  ["Status: ", "On hold"],
                  ["Last Updated: ", "2m ago"],
                ],
                images: [
                  'assets/images/1.png',
                  'assets/images/2.png',
                  'assets/images/3.png',
                  'assets/images/1.png',
                  'assets/images/2.png',
                ],
                progress: 40,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: CustomCard(
                title: "Revamp Project",
                tableContents: [
                  ["Template: ", "Bug Project"],
                  ["Status: ", "On hold"],
                  ["Last Updated: ", "2m ago"],
                ],
                images: [
                  'assets/images/1.png',
                  'assets/images/2.png',
                  'assets/images/3.png',
                  'assets/images/1.png',
                  'assets/images/2.png',
                ],
                progress: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
